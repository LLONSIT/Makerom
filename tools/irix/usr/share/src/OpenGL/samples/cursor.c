#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "tk.h"


GLenum rgb, doubleBuffer, directRender, windType;
int windX, windY;
int cursor;
GLubyte shape[] = {
    0x00, 0x00,
    0x7F, 0xFE,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x40, 0x02,
    0x7F, 0xFE,
    0x00, 0x00
};
GLubyte mask[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xE0, 0x07,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF
};


static void Init(void)
{
    int i;

    for (i = TK_BLACK; i <= TK_WHITE; i++) {
	tkNewCursor(i, shape, mask, i, TK_WHITE, 0, 0);
    }
    for (i = TK_BLACK; i <= TK_WHITE; i++) {
	tkNewCursor(i+TK_WHITE, shape, mask, TK_WHITE, i, 0, 0);
    }
    cursor = TK_BLACK;
    tkSetCursor(cursor);
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClearIndex(0.0);
}

static void Reshape(int width, int height)
{

    windX = width;
    windY = height;
    glViewport(0, 0, windX, windY);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, windX, 0, windY);
    glMatrixMode(GL_MODELVIEW);
}

static GLenum Key(int key, GLenum mask)
{

    switch (key) {
      case TK_ESCAPE:
        tkQuit();
      case TK_SPACE:
	cursor++;
	if (cursor > TK_WHITE*2) {
	    cursor = TK_BLACK;
	}
	tkSetCursor(cursor);
      default:
	return GL_FALSE;
    }
    return GL_TRUE;
}

static void Draw(void)
{

    glClear(GL_COLOR_BUFFER_BIT);

    glBegin(GL_POLYGON);
	TK_SETCOLOR(windType, TK_BLACK);
	glVertex2i(0, 0);
	TK_SETCOLOR(windType, TK_RED);
	glVertex2i(windX, 0);
	TK_SETCOLOR(windType, TK_GREEN);
	glVertex2i(windX, windY);
	TK_SETCOLOR(windType, TK_BLUE);
	glVertex2i(0, windY);
    glEnd();

    glFlush();

    if (doubleBuffer) {
	tkSwapBuffers();
    }
}

static GLenum Args(int argc, char **argv)
{
    GLint i;

    rgb = GL_TRUE;
    doubleBuffer = GL_FALSE;
    directRender = GL_TRUE;

    for (i = 1; i < argc; i++) {
	if (strcmp(argv[i], "-ci") == 0) {
	    rgb = GL_FALSE;
	} else if (strcmp(argv[i], "-rgb") == 0) {
	    rgb = GL_TRUE;
	} else if (strcmp(argv[i], "-sb") == 0) {
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

    if (Args(argc, argv) == GL_FALSE) {
	tkQuit();
    }

    windX = 300;
    windY = 300;
    tkInitPosition(0, 0, windX, windY);

    windType = (rgb) ? TK_RGB : TK_INDEX;
    windType |= (doubleBuffer) ? TK_DOUBLE : TK_SINGLE;
    windType |= (directRender) ? TK_DIRECT : TK_INDIRECT;
    tkInitDisplayMode(windType);

    if (tkInitWindow("Cursor Test") == GL_FALSE) {
	tkQuit();
    }

    Init();

    tkExposeFunc(Reshape);
    tkReshapeFunc(Reshape);
    tkKeyDownFunc(Key);
    tkDisplayFunc(Draw);
    tkExec();
}
