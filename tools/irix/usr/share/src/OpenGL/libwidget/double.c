#include <stdio.h>
#include <Xm/Form.h>
#include <Xm/Frame.h>
#include <X11/keysym.h>
#include <GL/GLwMDrawA.h>

/* Callbacks */
static void draw_scene_callback();
static void do_resize();
static void init_window();
static void input();


static XtAppContext app_context;
static String fallback_resources[] = {
    "*frame*shadowType: SHADOW_IN",
    "*GLwMDrawingArea*width: 100",
    "*GLwMDrawingArea*height: 100",
    "*GLwMDrawingArea*rgba: TRUE",
    "*GLwMDrawingArea*allocateBackground: TRUE",
    "*glwidget*background:red",
    "*glwidget2*background:green",
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
			       (XrmOptionDescList)NULL, 
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
    XtSetArg(args[n], XmNtopAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNleftAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNrightAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNleftOffset, 30); n++;
    XtSetArg(args[n], XmNtopOffset, 30); n++;
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

    n = 0;
    XtSetArg(args[n], XtNx, 30); n++;
    XtSetArg(args[n], XtNy, 30); n++;
    XtSetArg(args[n], XmNbottomAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNtopAttachment, XmATTACH_WIDGET); n++;
    XtSetArg(args[n], XmNtopWidget, frame); n++;
    XtSetArg(args[n], XmNleftAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNrightAttachment, XmATTACH_FORM); n++;
    XtSetArg(args[n], XmNleftOffset, 30); n++;
    XtSetArg(args[n], XmNtopOffset, 30); n++;
    XtSetArg(args[n], XmNbottomOffset, 30); n++;
    XtSetArg(args[n], XmNrightOffset, 30); n++;
    frame = XmCreateFrame (form, "frame", args, n);
    XtManageChild (frame);

    n = 0;
    glw = GLwCreateMDrawingArea(frame, "glwidget2", args, n);
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
    GLXContext glx_context;

    printf ("ginit\n");

    XtSetArg(args[0], GLwNvisualInfo, &vi);
    XtGetValues(w, args, 1);

    glx_context = glXCreateContext(XtDisplay(w), vi, 0, GL_FALSE);
    XtSetArg(args[0], XmNuserData, glx_context);
    XtSetValues(w, args, 1);
}


static void
draw_scene_callback(Widget w, XtPointer client_data, XtPointer call_data)
{
    GLXContext glx_context;
    Arg args[1];

    XtSetArg(args[0], XmNuserData, &glx_context);
    XtGetValues(w, args, 1);

    GLwDrawingAreaMakeCurrent(w, glx_context);

#ifdef notdef
    /* clear the buffer	*/
    glClearColor(1,1,0,1);
    glClear(GL_COLOR_BUFFER_BIT);
    glFlush();
#endif
}

static void
do_resize(Widget w, XtPointer client_data,
	  GLwDrawingAreaCallbackStruct *call_data)
{
    printf ("resize to %d, %d\n", call_data->width, call_data->height);
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


