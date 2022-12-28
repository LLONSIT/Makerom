/*
 * surfgrid.c - simple test of polygon offset
 *
 *  $Revision: 1.3 $
 *
 * usage:
 *	surfgrid [-f]
 *
 * options:
 *	-f	run on full screen
 *
 * keys:
 *	p	toggle polygon offset
 *	m	toggle multisampling
 *      S       increase polygon offset factor
 *      s       decrease polygon offset factor
 *      B       increase polygon offset bias
 *      b       decrease polygon offset bias
 *	g	toggle grid drawing
 *	f	toggle smooth/flat shading
 *	n	toggle whether to use GL evaluators or GLU nurbs
 *	u	decr number of segments in U direction
 *	U	incr number of segments in U direction
 *	v	decr number of segments in V direction
 *	V	incr number of segments in V direction
 *	escape	quit
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <X11/keysym.h>
#include <Xm/MwmUtil.h>

#define W 600
#define H 600


static GLfloat controlpts[] = {
	 4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0,
         3.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0, 8.0, 0.0, 0.0, 4.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 3.0, 0.0,-1.0, 2.0,
         3.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0, 4.0, 0.0, 0.0, 4.0,
         2.0,-2.0, 0.0, 2.0, 1.0,-1.0, 0.5, 1.0, 1.5,-1.5, 0.5, 1.0,
         1.5,-1.5, 0.5, 1.0, 2.0,-2.0, 0.5, 1.0, 4.0,-4.0, 0.0, 2.0,
         4.0,-4.0, 0.0, 2.0, 2.0,-2.0,-0.5, 1.0, 1.5,-1.5,-0.5, 1.0,
         1.5,-1.5,-0.5, 1.0, 1.0,-1.0,-0.5, 1.0, 2.0,-2.0, 0.0, 2.0,
         0.0,-2.0, 0.0, 2.0, 0.0,-1.0, 0.5, 1.0, 0.0,-1.5, 0.5, 1.0,
         0.0,-1.5, 0.5, 1.0, 0.0,-2.0, 0.5, 1.0, 0.0,-4.0, 0.0, 2.0,
         0.0,-4.0, 0.0, 2.0, 0.0,-2.0,-0.5, 1.0, 0.0,-1.5,-0.5, 1.0,
         0.0,-1.5,-0.5, 1.0, 0.0,-1.0,-0.5, 1.0, 0.0,-2.0, 0.0, 2.0,
         0.0,-2.0, 0.0, 2.0, 0.0,-1.0, 0.5, 1.0, 0.0,-1.5, 0.5, 1.0,
         0.0,-1.5, 0.5, 1.0, 0.0,-2.0, 0.5, 1.0, 0.0,-4.0, 0.0, 2.0,
         0.0,-4.0, 0.0, 2.0, 0.0,-2.0,-0.5, 1.0, 0.0,-1.5,-0.5, 1.0,
         0.0,-1.5,-0.5, 1.0, 0.0,-1.0,-0.5, 1.0, 0.0,-2.0, 0.0, 2.0,
        -2.0,-2.0, 0.0, 2.0,-1.0,-1.0, 0.5, 1.0,-1.5,-1.5, 0.5, 1.0,
        -1.5,-1.5, 0.5, 1.0,-2.0,-2.0, 0.5, 1.0,-4.0,-4.0, 0.0, 2.0,
        -4.0,-4.0, 0.0, 2.0,-2.0,-2.0,-0.5, 1.0,-1.5,-1.5,-0.5, 1.0,
        -1.5,-1.5,-0.5, 1.0,-1.0,-1.0,-0.5, 1.0,-2.0,-2.0, 0.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-3.0, 0.0, 1.0, 2.0,
        -3.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,-8.0, 0.0, 0.0, 4.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-3.0, 0.0,-1.0, 2.0,
        -3.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,-4.0, 0.0, 0.0, 4.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-3.0, 0.0, 1.0, 2.0,
        -3.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,-8.0, 0.0, 0.0, 4.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-3.0, 0.0,-1.0, 2.0,
        -3.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,-4.0, 0.0, 0.0, 4.0,
        -2.0, 2.0, 0.0, 2.0,-1.0, 1.0, 0.5, 1.0,-1.5, 1.5, 0.5, 1.0,
        -1.5, 1.5, 0.5, 1.0,-2.0, 2.0, 0.5, 1.0,-4.0, 4.0, 0.0, 2.0,
        -4.0, 4.0, 0.0, 2.0,-2.0, 2.0,-0.5, 1.0,-1.5, 1.5,-0.5, 1.0,
        -1.5, 1.5,-0.5, 1.0,-1.0, 1.0,-0.5, 1.0,-2.0, 2.0, 0.0, 2.0,
         0.0, 2.0, 0.0, 2.0, 0.0, 1.0, 0.5, 1.0, 0.0, 1.5, 0.5, 1.0,
         0.0, 1.5, 0.5, 1.0, 0.0, 2.0, 0.5, 1.0, 0.0, 4.0, 0.0, 2.0,
         0.0, 4.0, 0.0, 2.0, 0.0, 2.0,-0.5, 1.0, 0.0, 1.5,-0.5, 1.0,
         0.0, 1.5,-0.5, 1.0, 0.0, 1.0,-0.5, 1.0, 0.0, 2.0, 0.0, 2.0,
         0.0, 2.0, 0.0, 2.0, 0.0, 1.0, 0.5, 1.0, 0.0, 1.5, 0.5, 1.0,
         0.0, 1.5, 0.5, 1.0, 0.0, 2.0, 0.5, 1.0, 0.0, 4.0, 0.0, 2.0,
         0.0, 4.0, 0.0, 2.0, 0.0, 2.0,-0.5, 1.0, 0.0, 1.5,-0.5, 1.0,
         0.0, 1.5,-0.5, 1.0, 0.0, 1.0,-0.5, 1.0, 0.0, 2.0, 0.0, 2.0,
         2.0, 2.0, 0.0, 2.0, 1.0, 1.0, 0.5, 1.0, 1.5, 1.5, 0.5, 1.0,
         1.5, 1.5, 0.5, 1.0, 2.0, 2.0, 0.5, 1.0, 4.0, 4.0, 0.0, 2.0,
         4.0, 4.0, 0.0, 2.0, 2.0, 2.0,-0.5, 1.0, 1.5, 1.5,-0.5, 1.0,
         1.5, 1.5,-0.5, 1.0, 1.0, 1.0,-0.5, 1.0, 2.0, 2.0, 0.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0,
         3.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0, 8.0, 0.0, 0.0, 4.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 3.0, 0.0,-1.0, 2.0,
         3.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0, 4.0, 0.0, 0.0, 4.0,
};


static GLfloat nurbctlpts[] = {
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0,-2.0, 0.0, 2.0, 1.0,-1.0, 0.5, 1.0,
         2.0,-2.0, 0.5, 1.0, 4.0,-4.0, 0.0, 2.0, 2.0,-2.0,-0.5, 1.0,
         1.0,-1.0,-0.5, 1.0, 2.0,-2.0, 0.0, 2.0,-2.0,-2.0, 0.0, 2.0,
        -1.0,-1.0, 0.5, 1.0,-2.0,-2.0, 0.5, 1.0,-4.0,-4.0, 0.0, 2.0,
        -2.0,-2.0,-0.5, 1.0,-1.0,-1.0,-0.5, 1.0,-2.0,-2.0, 0.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 2.0, 0.0, 2.0,-1.0, 1.0, 0.5, 1.0,
        -2.0, 2.0, 0.5, 1.0,-4.0, 4.0, 0.0, 2.0,-2.0, 2.0,-0.5, 1.0,
        -1.0, 1.0,-0.5, 1.0,-2.0, 2.0, 0.0, 2.0, 2.0, 2.0, 0.0, 2.0,
         1.0, 1.0, 0.5, 1.0, 2.0, 2.0, 0.5, 1.0, 4.0, 4.0, 0.0, 2.0,
         2.0, 2.0,-0.5, 1.0, 1.0, 1.0,-0.5, 1.0, 2.0, 2.0, 0.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0,
         4.0, 0.0, 0.0, 4.0,
};


/*
 * Misc vector op routines.
 */

float x_axis[] = { 1.0, 0.0, 0.0 };
float y_axis[] = { 0.0, 1.0, 0.0 };
float z_axis[] = { 0.0, 0.0, 1.0 };
float nx_axis[] = { -1.0, 0.0, 0.0 };
float ny_axis[] = { 0.0, -1.0, 0.0 };
float nz_axis[] = { 0.0, 0.0, -1.0 };

void norm(float v[3])
{
    float r;

    r = sqrt( v[0]*v[0] + v[1]*v[1] + v[2]*v[2] );

    v[0] /= r;
    v[1] /= r;
    v[2] /= r;
}

float dot(float a[3], float b[3])
{
    return (a[0]*b[0] + a[1]*b[1] + a[2]*b[2]);
}

void cross(float v1[3], float v2[3], float result[3])
{
    result[0] = v1[1]*v2[2] - v1[2]*v2[1];
    result[1] = v1[2]*v2[0] - v1[0]*v2[2];
    result[2] = v1[0]*v2[1] - v1[1]*v2[0];
}

float length(float v[3])
{
    float r = sqrt( v[0]*v[0] + v[1]*v[1] + v[2]*v[2] );
    return r;
}


static long winwidth = W, winheight = H;
GC xgc;
Display *dpy;
Colormap cmap;
Window window;
XVisualInfo *vi;
GLXContext cx;
GLUnurbsObj *nobj;
GLuint surflist, gridlist;

int useglunurbs = 0;
int smooth = 1;
int tracking = 0;
int showgrid = 1;
int showsurf = 1;
int fullscreen = 0;
int multisampling = 0;
float modelmatrix[16];
float scale = 0.5;
float bias = 0.002;
int usegments=4;
int vsegments=4;

int spindx, spindy;
int startx, starty;
int curx, cury;

void redraw(void);
void createlists(void);

float torusnurbpts[];
float torusbezierpts[];

void eventloop( void )
{
    XEvent event;
    XButtonEvent *bev;
    int x, y, size;
    unsigned int w, h, bw, depth;
    Window root;
    
    for (;;) {
	if (XPending(dpy)) {
	    XNextEvent(dpy, &event);
	    bev = (XButtonEvent *) &event;
	    switch (event.type) {
	      case KeyPress:
		{
		    char buf[100];
		    int rv;
		    KeySym ks;

		    rv = XLookupString(&event.xkey, buf, sizeof(buf), &ks, 0);
		    switch (ks) {
		      case XK_n:
			useglunurbs = !useglunurbs;
			break;
		      case XK_p:
                        if (glIsEnabled( GL_POLYGON_OFFSET_EXT )) {
			    glDisable( GL_POLYGON_OFFSET_EXT );
			    printf("disabling polygon offset\n");
			} else {
			    glEnable( GL_POLYGON_OFFSET_EXT );
			    printf("enabling polygon offset\n");
			}
			break;
		      case XK_m:
			if (multisampling) {
			    if (glIsEnabled( GL_MULTISAMPLE_SGIS )) {
				glDisable( GL_MULTISAMPLE_SGIS );
			    } else {
				glEnable( GL_MULTISAMPLE_SGIS );
			    }
			}
			break;
		      case XK_g:
		        showgrid = !showgrid;
	                break;
		      case XK_t:
                        showsurf = !showsurf;
			break;
		      case XK_f:
			smooth = !smooth;
			if (smooth) {
			    glShadeModel( GL_SMOOTH );
			} else {
			    glShadeModel( GL_FLAT );
			}
			break;
		      case XK_S:
			scale += 0.1;
			printf( "scale: %8.4f\n", scale);
			break;
		      case XK_s:
			scale -= 0.1;
			printf( "scale: %8.4f\n", scale);
			break;
		      case XK_B:
			bias += 0.0001;
			printf( "bias:  %8.4f\n", bias);
			break;
		      case XK_b:
			bias -= 0.0001;
			printf( "bias:  %8.4f\n", bias);
			break;
		      case XK_u:
			usegments = (usegments < 2 ? 1 : usegments-1);
			createlists();
			break;
		      case XK_U:
			usegments++;
			createlists();
			break;
		      case XK_v:
			vsegments = (vsegments < 2 ? 1 : vsegments-1);
			createlists();
			break;
		      case XK_V:
			vsegments++;
			createlists();
			break;
		      case XK_Escape:
			exit(0);
			break;
		    }
		    if (!XPending(dpy)) redraw();
		}
		break;
	      case Expose:
		XGetGeometry(dpy, window, &root, &x, &y, &w, &h, &bw, &depth);
		winwidth = w;
		winheight = h;
		size = (winwidth < winheight ? winwidth : winheight);
		glViewport((winwidth-size)/2, (winheight-size)/2, size, size);
		redraw();
		break;
	      case ConfigureNotify:
		winwidth = event.xconfigure.width;
		winheight = event.xconfigure.height;
		size = (winwidth < winheight ? winwidth : winheight);
		glViewport((winwidth-size)/2, (winheight-size)/2, size, size);
		redraw();
		break;
	      case ButtonPress:
		curx = startx = bev->x;
		cury = starty = bev->y;
		spindx = 0;
		spindy = 0;
		tracking = True;
		break;
	      case ButtonRelease:
		/*
		 * If user released the button while moving the mouse, keep
		 * spinning.
		 */
		if (bev->x != curx || bev->y != cury) {
		    spindx = bev->x - curx;
		    spindy = bev->y - cury;
		}
		tracking = False;
		break;
	      case MotionNotify:
		if (XPending(dpy)) break;
		curx = bev->x;
		cury = bev->y;
		if (curx != startx || cury != starty) {
		    redraw();
		    startx = curx;
		    starty = cury;
		}
		break;
	    }
	} else {
	    if (!tracking && (spindx!=0 || spindy!=0)) {
		redraw();
	    }
	}
    }
}

void gridmaterials(void)
{
    static float front_mat_diffuse[] = { 1.0, 1.0, 0.4, 1.0 };
    static float front_mat_ambient[] = { 0.1, 0.1, 0.1, 1.0 };
    static float back_mat_diffuse[] = { 1.0, 0.0, 0.0, 1.0 };
    static float back_mat_ambient[] = { 0.1, 0.1, 0.1, 1.0 };

    glMaterialfv(GL_FRONT, GL_DIFFUSE, front_mat_diffuse);
    glMaterialfv(GL_FRONT, GL_AMBIENT, front_mat_ambient);
    glMaterialfv(GL_BACK, GL_DIFFUSE, back_mat_diffuse);
    glMaterialfv(GL_BACK, GL_AMBIENT, back_mat_ambient);
}

void surfacematerials(void)
{
    static float front_mat_diffuse[] = { 0.2, 0.7, 0.4, 1.0 };
    static float front_mat_ambient[] = { 0.1, 0.1, 0.1, 1.0 };
    static float back_mat_diffuse[] = { 1.0, 1.0, 0.2, 1.0 };
    static float back_mat_ambient[] = { 0.1, 0.1, 0.1, 1.0 };

    glMaterialfv(GL_FRONT, GL_DIFFUSE, front_mat_diffuse);
    glMaterialfv(GL_FRONT, GL_AMBIENT, front_mat_ambient);
    glMaterialfv(GL_BACK, GL_DIFFUSE, back_mat_diffuse);
    glMaterialfv(GL_BACK, GL_AMBIENT, back_mat_ambient);
}

void init(void)
{
    int i;
    static float ambient[] = { 0.0, 0.0, 0.0, 1.0 };
    static float diffuse[] = { 1.0, 1.0, 1.0, 1.0 };
    static float position[] = { 90.0, 90.0, -150.0, 0.0 };
    static float lmodel_ambient[] = { 1.0, 1.0, 1.0, 1.0 };
    static float lmodel_twoside[] = { GL_TRUE };

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective( 40.0, 1.0, 2.0, 200.0 );
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glGetFloatv(GL_MODELVIEW_MATRIX, modelmatrix);

    glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
    glLightfv(GL_LIGHT0, GL_POSITION, position);
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_AUTO_NORMAL);
    glEnable(GL_POLYGON_OFFSET_EXT);
    glFrontFace(GL_CCW);

    glEnable( GL_MAP2_VERTEX_4 );
    glClearColor(0.25, 0.25, 0.5, 0.0);

    glPolygonOffsetEXT( scale, bias );

    nobj = gluNewNurbsRenderer();
    gluNurbsProperty(nobj, GLU_SAMPLING_METHOD, GLU_DOMAIN_DISTANCE );

    surflist = glGenLists(1);
    gridlist = glGenLists(1);
    createlists();
}

void drawmesh(void)
{
    int i, j;
    float *p;

    int up2p = 4;
    int uorder = 3, vorder = 3;
    int nu = 4, nv = 4;
    int vp2p = up2p * uorder * nu;

    for (j=0; j < nv; j++) {
	for (i=0; i < nu; i++) {
	    p = torusbezierpts + (j * vp2p * vorder) + (i * up2p * uorder);
	    glPolygonOffsetEXT( scale, bias );
	    glMap2f( GL_MAP2_VERTEX_4, 0.0, 1.0, up2p, 3, 0.0, 1.0, vp2p, 3,
		     (void*)p );
	    if (showsurf) {
		surfacematerials();
		glEvalMesh2( GL_FILL, 0, usegments, 0, vsegments );
	    }
	    if (showgrid) {
                gridmaterials();
	        glEvalMesh2( GL_LINE, 0, usegments, 0, vsegments );
            }
	}
    }
}

void redraw(void)
{
    static int i=0;
    int dx, dy;
    float v[3], n[3], rot[3];
    float len, rlen, ang;
    static GLuint vcount;

    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glColor3f( 1, 0, 0);

    if (tracking) {
	dx = curx - startx;
	dy = cury - starty;
    } else {
	dx = spindx;
	dy = spindy;
    }
    if (dx || dy) {
	dy = -dy;
	v[0] = dx;
	v[1] = dy;
	v[2] = 0;

	len = length(v);
	ang = -len / 600 * 360;
	norm( v );
	cross( v, z_axis, rot );

	/*
	** This is certainly not recommended for programs that care
	** about performance or numerical stability: we concatenate
	** the rotation onto the current modelview matrix and read the
	** matrix back, thus saving ourselves from writing our own
	** matrix manipulation routines.
	*/
	glLoadIdentity();
	glRotatef(ang, rot[0], rot[1], rot[2]);
	glMultMatrixf(modelmatrix);
	glGetFloatv(GL_MODELVIEW_MATRIX, modelmatrix);
    }
    glLoadIdentity();
    glTranslatef( 0.0, 0.0, -10.0 );
    glMultMatrixf(modelmatrix);
    
    if (useglunurbs) {
	if (showsurf) glCallList(surflist);
	if (showgrid) glCallList(gridlist);
    } else {
	glMapGrid2f( usegments, 0.0, 1.0, vsegments, 0.0, 1.0 );
	drawmesh();
    }

    glXSwapBuffers(dpy, window);
}

static int attributes[] = {
    GLX_SAMPLES_SGIS, 4,
    GLX_RGBA,
    GLX_DOUBLEBUFFER,
    GLX_RED_SIZE, 1,
    GLX_GREEN_SIZE, 1,
    GLX_BLUE_SIZE, 1,
    GLX_DEPTH_SIZE, 1,
    None,
};

static void usage(void)
{
    printf("usage: surfgrid [-f]\n");
    exit(-1);
}

Window createwindow( int defW, int defH, int defX, int defY,
		     int attributes[], int argc, char **argv,
		     Bool fullscreen );

/*
 *  pass the name of the desired extension.
 *  this will return 1 if the extension is supported, 0 otherwise.
 */
int
getextension(char *e)
{
const GLubyte *s;

    s = glGetString(GL_EXTENSIONS);
    if (!s)
	return 0;
    if (*s == '\0')
	 return 0;
    return (strstr(s,e) == 0) ? 0 : 1;
}

int main(int argc, char **argv)
{
    int i, ms;

    for (i=1; i<argc; i++) {
	if (argv[i][0] == '-') {
	    switch (argv[i][1]) {
	      case 'f':
		fullscreen = 1;
		break;
	      default:
		usage();
		break;
	    }
	} else {
	    usage();
	}
    }

    window = createwindow( winwidth, winheight, 50, 50, attributes,
			   argc, argv, fullscreen );
    cx = glXCreateContext(dpy, vi, 0, GL_TRUE);
    if (!glXMakeCurrent(dpy, window, cx)) {
	fprintf(stderr, "Can't make window current to context\n");
	return -1;
    }
    if (!getextension("GL_EXT_polygon_offset")) {
	printf("Warning: GL_EXT_polygon_offset not supported on this machine.. trying anyway\n");
    }
    init();
    eventloop();
    glXMakeCurrent(dpy, None, NULL);
    glXDestroyContext(dpy, cx);
    XCloseDisplay(dpy);
}

/****************************************************************************/

float circleknots[] = { 0.0, 0.0, 0.0, 0.25, 0.50, 0.50, 0.75, 1.0, 1.0, 1.0 };

void createlists(void)
{
    gluNurbsProperty(nobj, GLU_U_STEP, (usegments-1)*4 );
    gluNurbsProperty(nobj, GLU_V_STEP, (vsegments-1)*4 );

    gluNurbsProperty(nobj, GLU_DISPLAY_MODE, GLU_FILL);
    glNewList(surflist, GL_COMPILE);
    	surfacematerials();
    	gluBeginSurface(nobj);
    	gluNurbsSurface(nobj, 10, circleknots, 10, circleknots,
		    	4, 28, torusnurbpts, 3, 3, GL_MAP2_VERTEX_4);
    	gluEndSurface(nobj);
    glEndList();

    gluNurbsProperty(nobj, GLU_DISPLAY_MODE, GLU_OUTLINE_POLYGON);
    glNewList(gridlist, GL_COMPILE);
    	gridmaterials();
    	gluBeginSurface(nobj);
    	gluNurbsSurface(nobj, 10, circleknots, 10, circleknots,
		    	4, 28, torusnurbpts, 3, 3, GL_MAP2_VERTEX_4);
    	gluEndSurface(nobj);
    glEndList();
}

/****************************************************************************/

/*
 * Create an X window.
 */

static Bool WaitForMapNotify(Display *d, XEvent *e, char *arg)
{
    if ((e->type == MapNotify) && (e->xmap.window == (Window)arg)) {
	return GL_TRUE;
    }
    return GL_FALSE;
}

Window createwindow(int w, int h, int x, int y, int attributes[],
		    int argc, char **argv, Bool fullscreen)
{
    Window window;
    XSetWindowAttributes swa;
    unsigned int width, height;
    XSizeHints sh;
    XEvent event;
    char buf[20];

    dpy = XOpenDisplay(0);
    if (!dpy) {
	fprintf(stderr, "Can't connect to display \"%s\"\n",
		getenv("DISPLAY"));
	exit(1);
    }
    /* tries for a multisample visual first, cause it looks a lot nicer */
    vi = glXChooseVisual(dpy, DefaultScreen(dpy), attributes);
    if (vi) {
	multisampling = 1;
    } else {
	/* try for a non-multisample visual */
	vi = glXChooseVisual(dpy, DefaultScreen(dpy), &attributes[2]);
	if (!vi) {
	    fprintf(stderr, "Cannot find visual on \"%s\"\n",
		    getenv("DISPLAY"));
	    exit(1);
	}
    }

    cmap = XCreateColormap(dpy, RootWindow(dpy, vi->screen), vi->visual,
			   AllocNone);
    swa.background_pixel = 0;
    swa.border_pixel = 0;
    swa.colormap = cmap;
    swa.event_mask = ExposureMask | StructureNotifyMask | KeyPressMask
      | KeyReleaseMask | ButtonPressMask | ButtonMotionMask
	| ButtonReleaseMask;

    if (fullscreen) {
	width = DisplayWidth( dpy, 0 );
	height = DisplayHeight( dpy, 0 );
	sh.x = 0;
	sh.y = 0;
	sprintf( buf, "%dx%d+0+0", DisplayWidth(dpy,0), DisplayHeight(dpy,0));
    } else {
	width = w;
	height = h;
	sh.x = x;
	sh.y = y;
    }
    sh.flags = USPosition | PPosition;
    window = XCreateWindow(dpy, RootWindow(dpy, vi->screen), sh.x, sh.y,
			   width, height,
			   0, vi->depth, InputOutput, vi->visual,
			   CWBorderPixel|CWColormap|CWEventMask|CWBackPixel,
			   &swa);
    XSetStandardProperties(dpy, window, argv[0], argv[0],
			   None, argv, argc, &sh);
    XSetWMColormapWindows(dpy, window, &window, 1);
    if (fullscreen) {
	/* turn off window decorations */
	Atom hints_atom;
	MotifWmHints hints;

	hints_atom = XInternAtom( dpy, "_MOTIF_WM_HINTS", 0 );
	hints.flags = MWM_HINTS_DECORATIONS;
	hints.decorations = 0;
	XChangeProperty( dpy, window, hints_atom, hints_atom, 32,
			 PropModeReplace, (unsigned char*)&hints, 5 );
    }
    XMapWindow(dpy, window);
    XIfEvent(dpy, &event, WaitForMapNotify, (char*)window);
    return window;
}

/*
 * Control points of the torus in Bezier form.  Can be rendered
 * using OpenGL evaluators.
 */
static GLfloat torusbezierpts[] = {
	 4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0,
         3.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0, 8.0, 0.0, 0.0, 4.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 3.0, 0.0,-1.0, 2.0,
         3.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0, 4.0, 0.0, 0.0, 4.0,
         2.0,-2.0, 0.0, 2.0, 1.0,-1.0, 0.5, 1.0, 1.5,-1.5, 0.5, 1.0,
         1.5,-1.5, 0.5, 1.0, 2.0,-2.0, 0.5, 1.0, 4.0,-4.0, 0.0, 2.0,
         4.0,-4.0, 0.0, 2.0, 2.0,-2.0,-0.5, 1.0, 1.5,-1.5,-0.5, 1.0,
         1.5,-1.5,-0.5, 1.0, 1.0,-1.0,-0.5, 1.0, 2.0,-2.0, 0.0, 2.0,
         0.0,-2.0, 0.0, 2.0, 0.0,-1.0, 0.5, 1.0, 0.0,-1.5, 0.5, 1.0,
         0.0,-1.5, 0.5, 1.0, 0.0,-2.0, 0.5, 1.0, 0.0,-4.0, 0.0, 2.0,
         0.0,-4.0, 0.0, 2.0, 0.0,-2.0,-0.5, 1.0, 0.0,-1.5,-0.5, 1.0,
         0.0,-1.5,-0.5, 1.0, 0.0,-1.0,-0.5, 1.0, 0.0,-2.0, 0.0, 2.0,
         0.0,-2.0, 0.0, 2.0, 0.0,-1.0, 0.5, 1.0, 0.0,-1.5, 0.5, 1.0,
         0.0,-1.5, 0.5, 1.0, 0.0,-2.0, 0.5, 1.0, 0.0,-4.0, 0.0, 2.0,
         0.0,-4.0, 0.0, 2.0, 0.0,-2.0,-0.5, 1.0, 0.0,-1.5,-0.5, 1.0,
         0.0,-1.5,-0.5, 1.0, 0.0,-1.0,-0.5, 1.0, 0.0,-2.0, 0.0, 2.0,
        -2.0,-2.0, 0.0, 2.0,-1.0,-1.0, 0.5, 1.0,-1.5,-1.5, 0.5, 1.0,
        -1.5,-1.5, 0.5, 1.0,-2.0,-2.0, 0.5, 1.0,-4.0,-4.0, 0.0, 2.0,
        -4.0,-4.0, 0.0, 2.0,-2.0,-2.0,-0.5, 1.0,-1.5,-1.5,-0.5, 1.0,
        -1.5,-1.5,-0.5, 1.0,-1.0,-1.0,-0.5, 1.0,-2.0,-2.0, 0.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-3.0, 0.0, 1.0, 2.0,
        -3.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,-8.0, 0.0, 0.0, 4.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-3.0, 0.0,-1.0, 2.0,
        -3.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,-4.0, 0.0, 0.0, 4.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-3.0, 0.0, 1.0, 2.0,
        -3.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,-8.0, 0.0, 0.0, 4.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-3.0, 0.0,-1.0, 2.0,
        -3.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,-4.0, 0.0, 0.0, 4.0,
        -2.0, 2.0, 0.0, 2.0,-1.0, 1.0, 0.5, 1.0,-1.5, 1.5, 0.5, 1.0,
        -1.5, 1.5, 0.5, 1.0,-2.0, 2.0, 0.5, 1.0,-4.0, 4.0, 0.0, 2.0,
        -4.0, 4.0, 0.0, 2.0,-2.0, 2.0,-0.5, 1.0,-1.5, 1.5,-0.5, 1.0,
        -1.5, 1.5,-0.5, 1.0,-1.0, 1.0,-0.5, 1.0,-2.0, 2.0, 0.0, 2.0,
         0.0, 2.0, 0.0, 2.0, 0.0, 1.0, 0.5, 1.0, 0.0, 1.5, 0.5, 1.0,
         0.0, 1.5, 0.5, 1.0, 0.0, 2.0, 0.5, 1.0, 0.0, 4.0, 0.0, 2.0,
         0.0, 4.0, 0.0, 2.0, 0.0, 2.0,-0.5, 1.0, 0.0, 1.5,-0.5, 1.0,
         0.0, 1.5,-0.5, 1.0, 0.0, 1.0,-0.5, 1.0, 0.0, 2.0, 0.0, 2.0,
         0.0, 2.0, 0.0, 2.0, 0.0, 1.0, 0.5, 1.0, 0.0, 1.5, 0.5, 1.0,
         0.0, 1.5, 0.5, 1.0, 0.0, 2.0, 0.5, 1.0, 0.0, 4.0, 0.0, 2.0,
         0.0, 4.0, 0.0, 2.0, 0.0, 2.0,-0.5, 1.0, 0.0, 1.5,-0.5, 1.0,
         0.0, 1.5,-0.5, 1.0, 0.0, 1.0,-0.5, 1.0, 0.0, 2.0, 0.0, 2.0,
         2.0, 2.0, 0.0, 2.0, 1.0, 1.0, 0.5, 1.0, 1.5, 1.5, 0.5, 1.0,
         1.5, 1.5, 0.5, 1.0, 2.0, 2.0, 0.5, 1.0, 4.0, 4.0, 0.0, 2.0,
         4.0, 4.0, 0.0, 2.0, 2.0, 2.0,-0.5, 1.0, 1.5, 1.5,-0.5, 1.0,
         1.5, 1.5,-0.5, 1.0, 1.0, 1.0,-0.5, 1.0, 2.0, 2.0, 0.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0,
         3.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0, 8.0, 0.0, 0.0, 4.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 3.0, 0.0,-1.0, 2.0,
         3.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0, 4.0, 0.0, 0.0, 4.0,
};

/*
 * Control points of a torus in NURBS form.  Can be rendered using
 * the GLU NURBS routines.
 */
static GLfloat torusnurbpts[] = {
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0,-2.0, 0.0, 2.0, 1.0,-1.0, 0.5, 1.0,
         2.0,-2.0, 0.5, 1.0, 4.0,-4.0, 0.0, 2.0, 2.0,-2.0,-0.5, 1.0,
         1.0,-1.0,-0.5, 1.0, 2.0,-2.0, 0.0, 2.0,-2.0,-2.0, 0.0, 2.0,
        -1.0,-1.0, 0.5, 1.0,-2.0,-2.0, 0.5, 1.0,-4.0,-4.0, 0.0, 2.0,
        -2.0,-2.0,-0.5, 1.0,-1.0,-1.0,-0.5, 1.0,-2.0,-2.0, 0.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 0.0, 1.0, 2.0,-4.0, 0.0, 1.0, 2.0,
        -8.0, 0.0, 0.0, 4.0,-4.0, 0.0,-1.0, 2.0,-2.0, 0.0,-1.0, 2.0,
        -4.0, 0.0, 0.0, 4.0,-2.0, 2.0, 0.0, 2.0,-1.0, 1.0, 0.5, 1.0,
        -2.0, 2.0, 0.5, 1.0,-4.0, 4.0, 0.0, 2.0,-2.0, 2.0,-0.5, 1.0,
        -1.0, 1.0,-0.5, 1.0,-2.0, 2.0, 0.0, 2.0, 2.0, 2.0, 0.0, 2.0,
         1.0, 1.0, 0.5, 1.0, 2.0, 2.0, 0.5, 1.0, 4.0, 4.0, 0.0, 2.0,
         2.0, 2.0,-0.5, 1.0, 1.0, 1.0,-0.5, 1.0, 2.0, 2.0, 0.0, 2.0,
         4.0, 0.0, 0.0, 4.0, 2.0, 0.0, 1.0, 2.0, 4.0, 0.0, 1.0, 2.0,
         8.0, 0.0, 0.0, 4.0, 4.0, 0.0,-1.0, 2.0, 2.0, 0.0,-1.0, 2.0,
         4.0, 0.0, 0.0, 4.0,
};
