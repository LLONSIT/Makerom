#include <GL/gl.h>
#include "aux.h"
#include "teapot.h"

#if defined(__cplusplus) || defined(c_plusplus)
#define class c_class
#endif

long GRD;

#define TEAPOTSOLID 0
#define TEAPOTWIRE 1

static GLuint teapots[2] = {0, 0};

static float tex[2][2][2] = {{{0, 0},{1, 0}},{{0, 1},{1, 1}}};

static void solidTeapot(long grid, GLdouble scale)
{
    float p[4][4][3], q[4][4][3], r[4][4][3], s[4][4][3];
    long i, j, k, l;

    if (grid < 2) grid = 7;
    GRD = grid;
    teapots[TEAPOTSOLID] = glGenLists (1);
    glNewList(teapots[TEAPOTSOLID], GL_COMPILE);
    glPushMatrix ();
    glRotatef (270.0, 1.0, 0.0, 0.0);
    glScalef (0.5*scale, 0.5*scale, 0.5*scale);
    glTranslatef (0.0, 0.0, -1.5);
    for (i = 0; i < 10; i++) {
	for (j = 0; j < 4; j++)
	    for (k = 0; k < 4; k++) 
		for (l = 0; l < 3; l++) {
		    p[j][k][l] = cpdata[patchdata[i][j*4+k]][l];
		    q[j][k][l] = cpdata[patchdata[i][j*4+(3-k)]][l];
		    if (l == 1) q[j][k][l] *= -1.0;
		    if (i < 6) {
			r[j][k][l] = cpdata[patchdata[i][j*4+(3-k)]][l];
			if (l == 0) r[j][k][l] *= -1.0;
			s[j][k][l] = cpdata[patchdata[i][j*4+k]][l];
			if (l == 0) s[j][k][l] *= -1.0;
			if (l == 1) s[j][k][l] *= -1.0;
		    }
		}
	glMap2f(GL_MAP2_TEXTURE_COORD_2, 0, 1, 2, 2, 0, 1, 4, 2, &tex[0][0][0]);
	glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &p[0][0][0]);
	glEnable(GL_MAP2_VERTEX_3); glEnable(GL_MAP2_TEXTURE_COORD_2);
	glMapGrid2f(GRD, 0.0, 1.0, GRD, 0.0, 1.0);
	glEvalMesh2(GL_FILL, 0, GRD, 0, GRD);
	glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &q[0][0][0]);
	glEvalMesh2(GL_FILL, 0, GRD, 0, GRD);
	if (i < 6) {
	    glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &r[0][0][0]);
	    glEvalMesh2(GL_FILL, 0, GRD, 0, GRD);
	    glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &s[0][0][0]);
	    glEvalMesh2(GL_FILL, 0, GRD, 0, GRD);
	}
    }
    glDisable(GL_MAP2_VERTEX_3); glDisable(GL_MAP2_TEXTURE_COORD_2);
    glPopMatrix ();
    glEndList();
}

static void wireTeapot(long grid, GLdouble scale)
{
    float p[4][4][3], q[4][4][3], r[4][4][3], s[4][4][3];
    long i, j, k, l;
    
    if (grid < 2) grid = 7;
    GRD = grid;
    teapots[TEAPOTWIRE] = glGenLists (1);
    glNewList(teapots[TEAPOTWIRE], GL_COMPILE);
    glPushMatrix ();
    glRotatef (270.0, 1.0, 0.0, 0.0);
    glScalef (0.5*scale, 0.5*scale, 0.5*scale);
    glTranslatef (0.0, 0.0, -1.5);
    for (i = 0; i < 10; i++) {
	for (j = 0; j < 4; j++)
	    for (k = 0; k < 4; k++) 
		for (l = 0; l < 3; l++) {
		    p[j][k][l] = cpdata[patchdata[i][j*4+k]][l];
		    q[j][k][l] = cpdata[patchdata[i][j*4+(3-k)]][l];
		    if (l == 1) q[j][k][l] *= -1.0;
		    if (i < 6) {
			r[j][k][l] = cpdata[patchdata[i][j*4+(3-k)]][l];
			if (l == 0) r[j][k][l] *= -1.0;
			s[j][k][l] = cpdata[patchdata[i][j*4+k]][l];
			if (l == 0) s[j][k][l] *= -1.0;
			if (l == 1) s[j][k][l] *= -1.0;
		    }
		}
	glMap2f(GL_MAP2_TEXTURE_COORD_2, 0, 1, 2, 2, 0, 1, 4, 2, &tex[0][0][0]);
	glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &p[0][0][0]);
	glEnable(GL_MAP2_VERTEX_3); glEnable(GL_MAP2_TEXTURE_COORD_2);
	glMapGrid2f(GRD, 0.0, 1.0, GRD, 0.0, 1.0);
	glEvalMesh2(GL_LINE, 0, GRD, 0, GRD);
	glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &q[0][0][0]);
	glEvalMesh2(GL_LINE, 0, GRD, 0, GRD);
	if (i < 6) {
	    glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &r[0][0][0]);
	    glEvalMesh2(GL_LINE, 0, GRD, 0, GRD);
	    glMap2f(GL_MAP2_VERTEX_3, 0, 1, 3, 4, 0, 1, 12, 4, &s[0][0][0]);
	    glEvalMesh2(GL_LINE, 0, GRD, 0, GRD);
	}
    }
    glDisable(GL_MAP2_VERTEX_3); glDisable(GL_MAP2_TEXTURE_COORD_2);
    glPopMatrix ();
    glEndList();
}

void auxSolidTeapot(GLdouble scale)
{
    if (glIsList(teapots[TEAPOTSOLID]) == 0)
	solidTeapot (14, scale);
    glCallList(teapots[TEAPOTSOLID]);
}

void auxWireTeapot(GLdouble scale)
{
    if (glIsList(teapots[TEAPOTWIRE]) == 0)
	wireTeapot (10, scale);
    glCallList(teapots[TEAPOTWIRE]);
}

