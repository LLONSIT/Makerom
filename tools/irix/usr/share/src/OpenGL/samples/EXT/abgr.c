/*
** abgr.c - Demonstrates the use of the extension EXT_abgr.
**
** The same image data is used for both ABGR and RGBA formats
** in glDrawPixels and glTexImage2D.  The left side uses ABGR,
** the right side RGBA.  The top polygon demonstrates use of texture,
** and the bottom image is drawn with glDrawPixels.
**
** Note that the textures are defined as 3 component, so the alpha
** value is not used in applying the DECAL environment.
*/

#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "tk.h"

GLenum doubleBuffer, directRender;
GLint windW, windH;
GLubyte ubImage[65536];

static void Init(void)
{
    int i, j;
    GLubyte *img;
    GLsizei imgWidth = 128;

    glDisable(GL_DITHER);

    /* Create image */
    img = ubImage;
    for (j = 0; j < 32 * imgWidth; j++) {
	*img++ = 0xff;
	*img++ = 0x00;
	*img++ = 0x00;
	*img++ = 0xff;
    }
    for (j = 0; j < 32 * imgWidth; j++) {
	*img++ = 0xff;
	*img++ = 0x00;
	*img++ = 0xff;
	*img++ = 0x00;
    }
    for (j = 0; j < 32 * imgWidth; j++) {
	*img++ = 0xff;
	*img++ = 0xff;
	*img++ = 0x00;
	*img++ = 0x00;
    }
    for (j = 0; j < 32 * imgWidth; j++) {
	*img++ = 0x00;
	*img++ = 0xff;
	*img++ = 0x00;
	*img++ = 0xff;
    }
}

static void Reshape(int width, int height)
{

    windW = (GLint)width;
    windH = (GLint)height;

    glViewport(0, 0, (GLint)width, (GLint)height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(60.0, 1.0, 0.1, 1000.0);
    glMatrixMode(GL_MODELVIEW);
}

static GLenum Key(int key, GLenum mask)
{

    switch (key) {
      case TK_ESCAPE:
	tkQuit();
      default:
	return GL_FALSE;
    }
    return GL_TRUE;
}

/* Draw textured polygons */
void texFunc(void)
{
    GLenum err;

    glTexImage2D(GL_TEXTURE_2D, 0, 3, 128, 128, 0, GL_ABGR_EXT,
                GL_UNSIGNED_BYTE, ubImage);
    err = glGetError();
    if (err) printf("err %d\n",err);

    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    err = glGetError();
    if (err) printf("err %d\n",err);

    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL);
    glEnable(GL_TEXTURE_2D);

    glBegin(GL_POLYGON);
        glTexCoord2f(1.0, 1.0); glVertex3f(-0.2, 0.8, -100.0);
        glTexCoord2f(0.0, 1.0); glVertex3f(-0.8, 0.8, -2.0);
        glTexCoord2f(0.0, 0.0); glVertex3f(-0.8, 0.2, -2.0);
        glTexCoord2f(1.0, 0.0); glVertex3f(-0.2, 0.2, -100.0);
    glEnd();

    glTexImage2D(GL_TEXTURE_2D, 0, 3, 128, 128, 0, GL_RGBA,
                GL_UNSIGNED_BYTE, ubImage);

    glBegin(GL_POLYGON);
        glTexCoord2f(1.0, 1.0); glVertex3f(0.8, 0.8, -2.0);
        glTexCoord2f(0.0, 1.0); glVertex3f(0.2, 0.8, -100.0);
        glTexCoord2f(0.0, 0.0); glVertex3f(0.2, 0.2, -100.0);
        glTexCoord2f(1.0, 0.0); glVertex3f(0.8, 0.2, -2.0);
    glEnd();

    err = glGetError();
    if (err) printf("err %d\n",err);
}

static void Draw(void)
{

    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);

    glRasterPos3f(-0.8, -0.8, -1.5);
    glDrawPixels(128, 128, GL_ABGR_EXT, GL_UNSIGNED_BYTE, ubImage);

    glRasterPos3f(0.2, -0.8, -1.5);
    glDrawPixels(128, 128, GL_RGBA, GL_UNSIGNED_BYTE, ubImage);

    texFunc();

    if (doubleBuffer) {
	tkSwapBuffers();
    }
}

static GLenum Args(int argc, char **argv)
{
    GLint i;

    doubleBuffer = GL_FALSE;
    directRender = GL_TRUE;

    for (i = 1; i < argc; i++) {
	if (strcmp(argv[i], "-sb") == 0) {
	    doubleBuffer = GL_FALSE;
	} else if (strcmp(argv[i], "-db") == 0) {
	    doubleBuffer = GL_TRUE;
	} else if (strcmp(argv[i], "-dr") == 0) {
	    directRender = GL_TRUE;
	} else if (strcmp(argv[i], "-ir") == 0) {
	    directRender = GL_FALSE;
	} else {
	    printf("%s (Bad option).\n", argv[i]);
	    return GL_FALSE;
	}
    }
    return GL_TRUE;
}

void main(int argc, char **argv)
{
    GLenum type;
    const GLubyte *s;
    char *extName = "GL_EXT_abgr";

    if (Args(argc, argv) == GL_FALSE) {
	tkQuit();
    }

    tkInitPosition(0, 0, 400, 400);

    type = TK_RGB;
    type |= (doubleBuffer) ? TK_DOUBLE : TK_SINGLE;
    type |= (directRender) ? TK_DIRECT : TK_INDIRECT;
    tkInitDisplayMode(type);

    if (tkInitWindow("ABGR extension") == GL_FALSE) {
	tkQuit();
    }

    /* Make sure blend_logic_op extension is there. */
    s = glGetString(GL_EXTENSIONS);
    if (!s)
	tkQuit();
    if (strstr(s,extName) == 0) {
	printf("Blend_logic_op extension is not present.\n");
	tkQuit();
    }

    Init();

    tkExposeFunc(Reshape);
    tkReshapeFunc(Reshape);
    tkKeyDownFunc(Key);
    tkDisplayFunc(Draw);
    tkExec();
}
