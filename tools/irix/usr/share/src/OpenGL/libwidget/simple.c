#include <stdio.h>
#include <Xm/Form.h>
#include <Xm/Frame.h>
#include <X11/keysym.h>
#include <GL/GLwMDrawA.h>
#include <GL/gl.h>

/* Callbacks */
static void draw_scene_callback();
static void do_resize();
static void init_window();
static void input();
static void draw_scene();
static void draw_polys();

static XtAppContext app_context;
static GLXContext glx_context;
static String fallback_resources[] = {
    "*frame*shadowType: SHADOW_IN",
    "*glwidget*width: 300",
    "*glwidget*height: 300",
    "*glwidget*rgba: TRUE",
    "*glwidget*allocateBackground: TRUE",
    NULL
    };

main(argc, argv)
int argc;
char *argv[];
{
    Arg args[20];
    int n;
    Widget glw, toplevel, form, frame;


    toplevel = XtAppInitialize(&app_context, "4DgiftsGLw", 
			       (XrmOptionDescList) NULL, 
			       (Cardinal)0,
			       (int *)&argc, 
			       (String*)argv, 
			       fallback_resources,
			       (ArgList)NULL, 0);

    n = 0;
    form = XmCreateForm(toplevel, "form", args, n);
    XtManageChild(form);

    n = 0;
    XtSetArg(args[n], XtNx, 30); n++;
    XtSetArg(args[n], XtNy, 30); n++;
    XtSetArg(args[n], XmNbottomAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNtopAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNleftAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNrightAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNleftOffset, 30); n++;
    XtSetArg(args[n], XmNtopOffset, 30); n++;
    XtSetArg(args[n], XmNbottomOffset, 30); n++;
    XtSetArg(args[n], XmNrightOffset, 30); n++;
    frame = XmCreateFrame (form, "frame", args, n);
    XtManageChild (frame);

    n = 0;
    glw = GLwCreateMDrawingArea(frame, "glwidget", args, n);
    XtManageChild (glw);
    XtAddCallback(glw, GLwNexposeCallback, draw_scene_callback, 0);
    XtAddCallback(glw, GLwNresizeCallback, do_resize, 0);
    XtAddCallback(glw, GLwNginitCallback, init_window, 0);
    XtAddCallback(glw, GLwNinputCallback, input, 0);

    XtRealizeWidget(toplevel);

    XtAppMainLoop(app_context);

}


static void
init_window(Widget w, XtPointer client_data, XtPointer call_data)
{
    Arg args[1];
    XVisualInfo *vi;

    XtSetArg(args[0], GLwNvisualInfo, &vi);
    XtGetValues(w, args, 1);

    glx_context = glXCreateContext(XtDisplay(w), vi, 0, GL_FALSE);
}


static void
draw_scene_callback(Widget w, XtPointer client_data, XtPointer call_data)
{
    GLfloat val;

    GLwDrawingAreaMakeCurrent(w, glx_context);
    draw_scene();
}

static void
do_resize(Widget w, XtPointer client_data,
	  GLwDrawingAreaCallbackStruct *call_data)
{
    glViewport(0, 0, (GLint)call_data->width-1, (GLint)call_data->height-1);
}

static void
draw_scene(void)
{
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();
    gluPerspective(40.0, 1.0, 30.0, 1000.0);
    glTranslatef(0.0, 0.0, -40.0);
    glRotatef(-58.0, 0,1,0);
    draw_polys();
    glFlush();
}

float polygon1[3][3] = { {-10.0, -10.0,   0.0,},
                         { 10.0, -10.0,   0.0,},
                         {-10.0,  10.0,   0.0,} };

float polygon2[3][3] = { {  0.0, -10.0, -10.0,},
                         {  0.0, -10.0,  10.0,},
                         {  0.0,   5.0, -10.0,} };

float polygon3[4][3] = { {-10.0,   6.0,   4.0,},
                         {-10.0,   3.0,   4.0,},
                         {  4.0,  -9.0, -10.0,},
                         {  4.0,  -6.0, -10.0,} };

static void
draw_polys() {
    glBegin(GL_POLYGON);
        glColor3f(0.0, 0.0, 0.0);
        glVertex3fv(&polygon1[0][0]);
        glColor3f(0.7, 0.7, 0.7);
        glVertex3fv(&polygon1[1][0]);
        glColor3f(1.0, 1.0, 1.0);
        glVertex3fv(&polygon1[2][0]);
    glEnd();
    glBegin(GL_POLYGON);
        glColor3f(1.0, 1.0, 0.0);
	glVertex3fv(&polygon2[0][0]);
	glColor3f(0.0, 1.0, 0.7);
	glVertex3fv(&polygon2[1][0]);
	glColor3f(0.0, 0.0, 1.0);
	glVertex3fv(&polygon2[2][0]);
    glEnd();
    glBegin(GL_POLYGON);
        glColor3f(1.0, 1.0, 0.0);
	glVertex3fv(&polygon3[0][0]);
	glColor3f(1.0, 0.0, 1.0);
	glVertex3fv(&polygon3[1][0]);
	glColor3f(0.0, 0.0, 1.0);
	glVertex3fv(&polygon3[2][0]);
	glColor3f(1.0, 0.0, 1.0);
	glVertex3fv(&polygon3[3][0]);
    glEnd();
}

/* Process all Input callbacks*/
static void
input(Widget w, XtPointer client_data, GLwDrawingAreaCallbackStruct *call_data)
{
    char buffer[1];
    KeySym keysym;

    switch(call_data->event->type)
    {
    case KeyRelease:
	/* It is necessary to convert the keycode to a keysym before
	 * it is possible to check if it is an escape
	 */
	if (XLookupString((XKeyEvent *) call_data->event,buffer,1,&keysym,NULL)
	    == 1 && keysym == (KeySym)XK_Escape)
	    exit(0);
	break;
    }
}


