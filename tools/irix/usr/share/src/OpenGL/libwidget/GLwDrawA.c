#include <X11/IntrinsicP.h>
#include <X11/StringDefs.h>
#include <GL/glx.h>
#include <GL/gl.h>
#ifdef __GLX_MOTIF
#include <Xm/PrimitiveP.h>
#include <GLwMDrawAP.h>
#else /* not __GLX_MOTIF */
#include <GLwDrawAP.h>
#endif /* __GLX_MOTIF */
#include <assert.h>

#ifdef __GLX_MOTIF
/* The MOTIF version differs only in the inclusion of the primitive
 * widget class and in a vew variable and type name differences.
 * Rather than put ifdefs all over the place, we just use a few defines
 * to make it use motif types and names
 */
#define GLwDrawingAreaWidget		GLwMDrawingAreaWidget
#define GLwDrawingAreaClassRec		GLwMDrawingAreaClassRec
#define glwDrawingAreaClassRec		glwMDrawingAreaClassRec
#define glwDrawingAreaWidgetClass	glwMDrawingAreaWidgetClass
#define GLwDrawingAreaRec		GLwMDrawingAreaRec
#endif /* __GLX_MOTIF */

/* forward definitions */
/* resource default procs */
static void createColormap(GLwDrawingAreaWidget w,
			   int offset, XrmValue *value);

/* widget methods */
static void Initialize(GLwDrawingAreaWidget req, GLwDrawingAreaWidget new,
		       ArgList args, Cardinal *num_args);
static void Realize(Widget w, Mask *valueMask,
		    XSetWindowAttributes *attributes);
static void Redraw(GLwDrawingAreaWidget w, XEvent *event, Region region);
static void Resize(GLwDrawingAreaWidget glw);
static void Destroy(GLwDrawingAreaWidget glw);

#define offset(field) XtOffset(GLwDrawingAreaWidget, glwDrawingArea.field)

static char defaultTranslations[] =
#ifdef __GLX_MOTIF
     "<Key>osfHelp:PrimitiveHelp() \n"
#endif
    "<KeyDown>:	glwInput() \n\
     <KeyUp>:	glwInput() \n\
     <BtnDown>: glwInput() \n\
     <BtnUp>:   glwInput() \n\
     <BtnMotion>: glwInput() ";

static void glwInput(GLwDrawingAreaWidget glw, XEvent *event,
		      String *, Cardinal *);

static XtActionsRec actions[] = {
    { "glwInput", (XtActionProc) glwInput },	/* key or mouse input */
};

/*
 * There is a bit of unusual handling of the resources here.
 * Because Xt insists on allocating the colormap resource when it is
 * processing the core resources (even if we redeclare the colormap
 * resource here, we need to do a little trick.  When Xt first allocates
 * the colormap, we allow it to allocate the default one, since we have
 * not yet determined the appropriate visual (which is determined from
 * resources parsed after the colormap).  We also let it allocate colors
 * in that default colormap.
 *
 * In the initialize proc we calculate the actual visual.  Then, we
 * reobtain the colormap resource using XtGetApplicationResources in
 * the initialize proc.  If requested, we also reallocate colors in
 * that colormap using the same method.
 */

static XtResource resources[] = {
  /* The GLX attributes.  Add any new attributes here */

  {GLwNbufferSize, GLwCBufferSize, XtRInt, sizeof (int),
       offset(bufferSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNlevel, GLwCLevel, XtRInt, sizeof (int),
       offset(level), XtRImmediate, (XtPointer) 0},
  
  {GLwNrgba, GLwCRgba, XtRBoolean, sizeof (Boolean),
       offset(rgba), XtRImmediate, (XtPointer) FALSE},
  
  {GLwNdoublebuffer, GLwCDoublebuffer, XtRBoolean, sizeof (Boolean),
       offset(doublebuffer), XtRImmediate, (XtPointer) FALSE},
  
  {GLwNstereo, GLwCStereo, XtRBoolean, sizeof (Boolean),
       offset(stereo), XtRImmediate, (XtPointer) FALSE},
  
  {GLwNauxBuffers, GLwCAuxBuffers, XtRInt, sizeof (int),
       offset(auxBuffers), XtRImmediate, (XtPointer) 0},
  
  {GLwNredSize, GLwCColorSize, XtRInt, sizeof (int),
       offset(redSize), XtRImmediate, (XtPointer) 1},
  
  {GLwNgreenSize, GLwCColorSize, XtRInt, sizeof (int),
       offset(greenSize), XtRImmediate, (XtPointer) 1},
  
  {GLwNblueSize, GLwCColorSize, XtRInt, sizeof (int),
       offset(blueSize), XtRImmediate, (XtPointer) 1},
  
  {GLwNalphaSize, GLwCAlphaSize, XtRInt, sizeof (int),
       offset(alphaSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNdepthSize, GLwCDepthSize, XtRInt, sizeof (int),
       offset(depthSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNstencilSize, GLwCStencilSize, XtRInt, sizeof (int),
       offset(stencilSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNaccumRedSize, GLwCAccumColorSize, XtRInt, sizeof (int),
       offset(accumRedSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNaccumGreenSize, GLwCAccumColorSize, XtRInt, sizeof (int),
       offset(accumGreenSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNaccumBlueSize, GLwCAccumColorSize, XtRInt, sizeof (int),
       offset(accumBlueSize), XtRImmediate, (XtPointer) 0},
  
  {GLwNaccumAlphaSize, GLwCAccumAlphaSize, XtRInt, sizeof (int),
       offset(accumAlphaSize), XtRImmediate, (XtPointer) 0},
  
  /* the attribute list */
  {GLwNattribList, GLwCAttribList, XtRPointer, sizeof(int *),
       offset(attribList), XtRImmediate, (XtPointer) NULL},

  /* the visual info */
  {GLwNvisualInfo, GLwCVisualInfo, GLwRVisualInfo, sizeof (XVisualInfo *),
       offset(visualInfo), XtRImmediate, (XtPointer) NULL},

/* miscellaneous resources */
  {GLwNinstallColormap, GLwCInstallColormap, XtRBoolean, sizeof (Boolean),
       offset(installColormap), XtRImmediate, (XtPointer) TRUE},

  {GLwNallocateBackground, GLwCAllocateColors, XtRBoolean, sizeof (Boolean),
       offset(allocateBackground), XtRImmediate, (XtPointer) FALSE},

  {GLwNallocateOtherColors, GLwCAllocateColors, XtRBoolean, sizeof (Boolean),
       offset(allocateOtherColors), XtRImmediate, (XtPointer) FALSE},

  {GLwNinstallBackground, GLwCInstallBackground, XtRBoolean, sizeof (Boolean),
       offset(installBackground), XtRImmediate, (XtPointer) TRUE},

  {GLwNginitCallback, GLwCCallback, XtRCallback, sizeof (XtCallbackList),
       offset(ginitCallback), XtRImmediate, (XtPointer) NULL},

  {GLwNinputCallback, GLwCCallback, XtRCallback, sizeof (XtCallbackList),
       offset(inputCallback), XtRImmediate, (XtPointer) NULL},

  {GLwNresizeCallback, GLwCCallback, XtRCallback, sizeof (XtCallbackList),
       offset(resizeCallback), XtRImmediate, (XtPointer) NULL},

  {GLwNexposeCallback, GLwCCallback, XtRCallback, sizeof (XtCallbackList),
       offset(exposeCallback), XtRImmediate, (XtPointer) NULL},

#ifdef __GLX_MOTIF
  /* Changes to Motif primitive resources */
  {XmNtraversalOn, XmCTraversalOn, XmRBoolean, sizeof (Boolean),
       XtOffset (GLwDrawingAreaWidget, primitive.traversal_on), XmRImmediate,
       (XtPointer) FALSE},
  
  /* highlighting is normally disabled, as when Motif tries to disable
   * highlighting, it tries to reset the color back to the parent's
   * background (usually Motif blue).  Unfortunately, that is in a
   * different colormap, and doesn't work too well.
   */
  {XmNhighlightOnEnter, XmCHighlightOnEnter, XmRBoolean, sizeof (Boolean),
       XtOffset (GLwDrawingAreaWidget, primitive.highlight_on_enter),
       XmRImmediate, (XtPointer) FALSE},
  
  {XmNhighlightThickness, XmCHighlightThickness, XmRHorizontalDimension,
       sizeof (Dimension),
       XtOffset (GLwDrawingAreaWidget, primitive.highlight_thickness),
       XmRImmediate, (XtPointer) 0},

#endif /* __GLX_MOTIF */
};

/* The following resources are reobtained using XtGetApplicationResources
 * in the initialize proc.
 */
/* The colormap */
static XtResource initializeResources[] = {
  /* reobtain the colormap with the new visual */
  {XtNcolormap, XtCColormap, XtRColormap, sizeof(Colormap),
       XtOffset(GLwDrawingAreaWidget, core.colormap),
	 XtRCallProc,(XtPointer) createColormap},
};

/* reallocate any colors we need in the new colormap */
  
/* The background is obtained only if the allocateBackground resource is TRUE*/
static XtResource backgroundResources[] = {
#ifdef __GLX_MOTIF
   {
     XmNbackground, XmCBackground, XmRPixel, 
     sizeof (Pixel), XtOffset(GLwDrawingAreaWidget, core.background_pixel),
     XmRCallProc, (XtPointer) _XmBackgroundColorDefault
   },
   {
     XmNbackgroundPixmap, XmCPixmap, XmRXmBackgroundPixmap, 
     sizeof (Pixmap), XtOffset(GLwDrawingAreaWidget, core.background_pixmap),
     XmRImmediate, (XtPointer) XmUNSPECIFIED_PIXMAP
   },

#else	/* ! __GLX_MOTIF */
    {XtNbackground, XtCBackground, XtRPixel,sizeof(Pixel),
         XtOffset(GLwDrawingAreaWidget,core.background_pixel),
	 XtRString, (XtPointer)"XtDefaultBackground"},
    {XtNbackgroundPixmap, XtCPixmap, XtRPixmap, sizeof(Pixmap),
         XtOffset(GLwDrawingAreaWidget,core.background_pixmap),
	 XtRImmediate, (XtPointer)XtUnspecifiedPixmap},
#endif  /* __GLX_MOTIF */
};

/* The other colors such as the foreground are allocated only if
 * allocateOtherColors are set.  These resources only exist in Motif.
 */

#ifdef __GLX_MOTIF
static XtResource otherColorResources[] = {
   {
     XmNforeground, XmCForeground, XmRPixel, 
     sizeof (Pixel), XtOffset(GLwDrawingAreaWidget, primitive.foreground),
     XmRCallProc, (XtPointer) _XmForegroundColorDefault
   },

   {
     XmNhighlightColor, XmCHighlightColor, XmRPixel, sizeof (Pixel),
     XtOffset(GLwDrawingAreaWidget, primitive.highlight_color),
     XmRCallProc, (XtPointer) _XmHighlightColorDefault
   },

   {
     XmNhighlightPixmap, XmCHighlightPixmap, XmRPrimHighlightPixmap,
     sizeof (Pixmap),
     XtOffset(GLwDrawingAreaWidget, primitive.highlight_pixmap),
     XmRCallProc, (XtPointer) _XmPrimitiveHighlightPixmapDefault
   },
};
#endif /* __GLX_MOTIF */

struct attribInfo
{
    int offset;
    int attribute;
};

static struct attribInfo intAttribs[] =
{
    { offset(bufferSize), GLX_BUFFER_SIZE },
    { offset(level), GLX_LEVEL },
    { offset(auxBuffers), GLX_AUX_BUFFERS },
    { offset(redSize), GLX_RED_SIZE },
    { offset(greenSize), GLX_GREEN_SIZE },
    { offset(blueSize), GLX_BLUE_SIZE },
    { offset(alphaSize), GLX_ALPHA_SIZE },
    { offset(depthSize), GLX_DEPTH_SIZE },
    { offset(stencilSize), GLX_STENCIL_SIZE },
    { offset(accumRedSize), GLX_ACCUM_RED_SIZE },
    { offset(accumGreenSize), GLX_ACCUM_GREEN_SIZE },
    { offset(accumBlueSize), GLX_ACCUM_BLUE_SIZE },
    { offset(accumAlphaSize), GLX_ACCUM_ALPHA_SIZE },
    { 0, None },
};

static struct attribInfo booleanAttribs[] =
{
    { offset(rgba), GLX_RGBA },
    { offset(doublebuffer), GLX_DOUBLEBUFFER },
    { offset(stereo), GLX_STEREO },
    { 0, None },
};

#undef offset


GLwDrawingAreaClassRec glwDrawingAreaClassRec =
{
  { /* core fields */
#ifdef __GLX_MOTIF
    /* superclass		*/	(WidgetClass) &xmPrimitiveClassRec,
    /* class_name		*/	"GLwMDrawingArea",
#else /* not __GLX_MOTIF */
    /* superclass		*/	(WidgetClass) &widgetClassRec,
    /* class_name		*/	"GLwDrawingArea",
#endif /* __GLX_MOTIF */
    /* widget_size		*/	sizeof(GLwDrawingAreaRec),
    /* class_initialize		*/	NULL,
    /* class_part_initialize	*/	NULL,
    /* class_inited		*/	FALSE,
    /* initialize		*/	(XtInitProc) Initialize,
    /* initialize_hook		*/	NULL,
    /* realize			*/	Realize,
    /* actions			*/	actions,
    /* num_actions		*/	XtNumber(actions),
    /* resources		*/	resources,
    /* num_resources		*/	XtNumber(resources),
    /* xrm_class		*/	NULLQUARK,
    /* compress_motion		*/	TRUE,
    /* compress_exposure	*/	TRUE,
    /* compress_enterleave	*/	TRUE,
    /* visible_interest		*/	TRUE,
    /* destroy			*/	(XtWidgetProc) Destroy,
    /* resize			*/	(XtWidgetProc) Resize,
    /* expose			*/	(XtExposeProc) Redraw,
    /* set_values		*/	NULL,
    /* set_values_hook		*/	NULL,
    /* set_values_almost	*/	XtInheritSetValuesAlmost,
    /* get_values_hook		*/	NULL,
    /* accept_focus		*/	NULL,
    /* version			*/	XtVersion,
    /* callback_private		*/	NULL,
    /* tm_table			*/	defaultTranslations,
    /* query_geometry		*/	XtInheritQueryGeometry,
    /* display_accelerator	*/	XtInheritDisplayAccelerator,
    /* extension		*/	NULL
  },
#ifdef __GLX_MOTIF /* primitive resources */
  {
    /* border_highlight		*/	XmInheritBorderHighlight,
    /* border_unhighlight	*/	XmInheritBorderUnhighlight,
    /* translations		*/	XtInheritTranslations,
    /* arm_and_activate		*/	NULL,
    /* get_resources		*/	NULL,
    /* num get_resources	*/	0,
    /* extension		*/	NULL,				
  }
#endif /* __GLX_MOTIF */
};

WidgetClass glwDrawingAreaWidgetClass = (WidgetClass)&glwDrawingAreaClassRec;

static error(w,string)
Widget w;
char *string;
{
    char buf[100];
#ifdef __GLX_MOTIF
    sprintf (buf, "GLwMDrawingArea: %s\n", string);
#else
    sprintf (buf, "GLwDrawingArea: %s\n", string);
#endif
    XtAppError(XtWidgetToApplicationContext(w), buf);
}

static warning(w,string)
Widget w;
char *string;
{
    char buf[100];
#ifdef __GLX_MOTIF
    sprintf (buf, "GLwMDraw: %s\n", string);
#else
    sprintf (buf, "GLwDraw: %s\n", string);
#endif
    XtAppWarning(XtWidgetToApplicationContext(w), buf);
}

/* resource initialization methods */
/* Initialize the attribList based on the attributes */
static void createAttribList(GLwDrawingAreaWidget w)
{
    int listLength;
    register struct attribInfo *ap;
    int *ip;

    /* first find out how long a list we need */
    listLength=1;	/* include the terminating NULL */
    for (ap = booleanAttribs; ap->attribute; ap++)
    {
	if (*(Boolean *)(((char *)w)+ap->offset))
	    listLength++;	/* one word for a boolean */
    }
    for (ap = intAttribs; ap->attribute; ap++)
    {
	if (*(int *)(((char *)w)+ap->offset))
	    listLength+=2;	/* one word for an int */
    }
    w->glwDrawingArea.attribList = (int *)XtMalloc(listLength*sizeof(int));
    ip = w->glwDrawingArea.attribList;
    for (ap = booleanAttribs; ap->attribute; ap++)
    {
	if (*(Boolean *)(((char *)w)+ap->offset))
	    *ip++ = ap->attribute;
    }
    for (ap = intAttribs; ap->attribute; ap++)
    {
	if (*(int *)(((char *)w)+ap->offset))
	{
	    *ip++ = ap->attribute;
	    *ip++ = *(int *)(((char *)w)+ap->offset);
	}
    }
    *ip = None;
}

/* Initialize the visualInfo based on the attribute list */
static void createVisualInfo(GLwDrawingAreaWidget w)
{
    static XVisualInfo *visualInfo;

    assert(w->glwDrawingArea.attribList);
    w->glwDrawingArea.visualInfo = glXChooseVisual(XtDisplay(w),
					XScreenNumberOfScreen(XtScreen(w)),
					w->glwDrawingArea.attribList);
    if (!w->glwDrawingArea.visualInfo)
	error(w,"requested visual not supported");
}

/* Initialize the colormap based on the visual info.
 * This routine maintains a cache of visual-infos to colormaps.  If two
 * widgets share the same visual info, they share the same colormap.
 * This function is called by the callProc of the colormap resource entry.
 */
static void createColormap(GLwDrawingAreaWidget w,
			   int offset, XrmValue *value)
{
    static struct cmapCache
    {
	Visual *visual;
	Colormap cmap;
    } *cmapCache;
    static int cacheEntries=0;
    static int cacheMalloced=0;

    register int i;
    
    assert(w->glwDrawingArea.visualInfo);

    /* see if we can find it in the cache */
    for (i=0; i<cacheEntries; i++)
	if (cmapCache[i].visual == w->glwDrawingArea.visualInfo->visual)
	{
	    value->addr = (XtPointer) (&cmapCache[i].cmap);
	    return;
	}
    /* not in the cache, create a new entry */
    if (cacheEntries >= cacheMalloced)
    {
	/* need to malloc a new one.  Since we are likely to have only a
	 * few colormaps, we allocate one the first time, and double
	 * each subsequent time.
	 */
	if (cacheMalloced == 0)
	{
	    cacheMalloced = 1;
	    cmapCache = (struct cmapCache *)XtMalloc(sizeof(struct cmapCache));
	}
	else
	{
	    cacheMalloced <<= 1;
	    cmapCache = (struct cmapCache *)XtRealloc((char *) cmapCache,
						      sizeof(struct cmapCache)*
						      cacheMalloced);
	}
    }
       
    cmapCache[cacheEntries].cmap  = XCreateColormap (XtDisplay(w),
					RootWindow(XtDisplay(w),
					w->glwDrawingArea.visualInfo->screen),
					w->glwDrawingArea.visualInfo->visual,
					AllocNone);
    cmapCache[cacheEntries].visual = w->glwDrawingArea.visualInfo->visual;
    value->addr = (XtPointer) (&cmapCache[cacheEntries++].cmap);
}

static void
Initialize (GLwDrawingAreaWidget req, GLwDrawingAreaWidget new,
	    ArgList args, Cardinal *num_args)
{

    if (req->core.width == 0)
	new->core.width = 100;
    if (req->core.height == 0)
	new->core.width = 100;

    /* create the attribute list if needed */
    if (new->glwDrawingArea.attribList == NULL)
    {
	new->glwDrawingArea.myList = TRUE;
	createAttribList(new);
    }
    else
	new->glwDrawingArea.myList = FALSE;

    /* determine the visual info if needed */
    if (new->glwDrawingArea.visualInfo == NULL)
    {
	new->glwDrawingArea.myVisual = TRUE;
	createVisualInfo(new);
    }
    else
	new->glwDrawingArea.myVisual = FALSE;

    new->core.depth = new->glwDrawingArea.visualInfo->depth;

    /* Reobtain the colormap and colors in it using XtGetApplicationResources*/
    XtGetApplicationResources((Widget) new, new,
			      initializeResources,
			      XtNumber(initializeResources),
			      args, *num_args);

    /* obtain the color resources if appropriate */
    if (req->glwDrawingArea.allocateBackground)
	XtGetApplicationResources((Widget) new, new,
				  backgroundResources,
				  XtNumber(backgroundResources),
				  args, *num_args);

#ifdef __GLX_MOTIF
    if (req->glwDrawingArea.allocateOtherColors)
	XtGetApplicationResources((Widget) new, new,
				  otherColorResources,
				  XtNumber(otherColorResources),
				  args, *num_args);
#endif /* __GLX_MOTIF */

}

static void
Realize(Widget w, Mask *valueMask, XSetWindowAttributes *attributes)
{
    register GLwDrawingAreaWidget glw = (GLwDrawingAreaWidget)w;
    GLwDrawingAreaCallbackStruct cb;
   
    /* if we haven't requested that the background be both installed and
     * allocated, don't install it.
     */
    if (!(glw->glwDrawingArea.installBackground &&
	  glw->glwDrawingArea.allocateBackground))
	*valueMask &= ~CWBackPixel;
    
    XtCreateWindow (w, (unsigned int)InputOutput,
		    glw->glwDrawingArea.visualInfo->visual,
		    *valueMask, attributes);

    /* if appropriate, call XSetWMColormapWindows to install the colormap */
    if (glw->glwDrawingArea.installColormap)
    {
	Widget parentShell = XtParent(w);
	Status status;
	Window *windowsReturn;
	int countReturn;
	
	while (parentShell && !XtIsShell(parentShell))
	    parentShell = XtParent(parentShell);
	if (parentShell && XtWindow(parentShell))
	{
	    /* check to see if there is already a property */
	    status = XGetWMColormapWindows(XtDisplay(parentShell),
					   XtWindow(parentShell),
					   &windowsReturn, &countReturn);
	    
	    /* if no property, just create one */
	    if (!status)
	    {
		Window windows[2];
		windows[0] = XtWindow(w);
		windows[1] = XtWindow(parentShell);
		XSetWMColormapWindows(XtDisplay(parentShell),
				      XtWindow(parentShell),
				      windows, 2);
	    }
	    /* there was a property, add myself to the beginning */
	    else
	    {
		Window *windows = (Window *)XtMalloc((sizeof(Window))*
						     (countReturn+1));
		register int i;
		windows[0] = XtWindow(w);
		for (i=0; i<countReturn; i++)
		    windows[i+1] = windowsReturn[i];
		XSetWMColormapWindows(XtDisplay(parentShell),
				      XtWindow(parentShell),
				      windows, countReturn+1);
		XtFree((char *) windows);
		XtFree((char *) windowsReturn);
	    }
	}
	else
	    warning(w, "Could not set colormap property on parent shell");
    }
    cb.reason = GLwCR_GINIT;
    cb.event = NULL;
    cb.width = glw->core.width;
    cb.height = glw->core.height;
    XtCallCallbackList((Widget) glw, glw->glwDrawingArea.ginitCallback, &cb);
}

static void
Redraw(GLwDrawingAreaWidget w, XEvent *event, Region region)
{
   GLwDrawingAreaCallbackStruct cb;
   XtCallbackList cblist;
   
   cb.reason = GLwCR_EXPOSE;
   cb.event = event;
   cb.width = w->core.width;
   cb.height = w->core.height;
   XtCallCallbackList ((Widget) w, w->glwDrawingArea.exposeCallback, &cb);
}

static void
Resize(GLwDrawingAreaWidget glw)
{
    GLwDrawingAreaCallbackStruct cb;

    /* if we get a resize event before being realized, we can't handle it */
    if (!XtIsRealized((Widget)glw))
	return;
   cb.reason = GLwCR_RESIZE;
   cb.event = NULL;
   cb.width = glw->core.width;
   cb.height = glw->core.height;
   XtCallCallbackList ((Widget) glw, glw->glwDrawingArea.resizeCallback, &cb);
}

static void
Destroy(GLwDrawingAreaWidget glw)    
{
    if (glw->glwDrawingArea.myList && glw->glwDrawingArea.attribList)
	XtFree ((XtPointer)glw->glwDrawingArea.attribList);
    if (glw->glwDrawingArea.myVisual && glw->glwDrawingArea.visualInfo)
	XtFree ((XtPointer)glw->glwDrawingArea.visualInfo);

    /* if my colormap was installed, remove it */
    if (glw->glwDrawingArea.installColormap)
    {
	Widget parentShell = XtParent(glw);
	Status status;
	Window *windowsReturn;
	int countReturn;
	register int i;
    
	/* find the parent shell */
	while (parentShell && !XtIsShell(parentShell))
	    parentShell = XtParent(parentShell);

	if (parentShell && XtWindow(parentShell))
	{
	    /* make sure there is a property */
	    status = XGetWMColormapWindows(XtDisplay(parentShell),
					   XtWindow(parentShell),
					   &windowsReturn, &countReturn);
	    
	    /* if no property, just return.  If there was a property,
	     * continue
	     */
	    if (status)
	    {
		/* search for a match */
		for (i=0; i<countReturn; i++)
		{
		    if (windowsReturn[i] == XtWindow(glw))
		    {
			/* we found a match, now copu the rest down */
			for (i++; i<countReturn; i++)
			{
			    windowsReturn[i-1] = windowsReturn[i];
			}
			XSetWMColormapWindows(XtDisplay(parentShell),
					      XtWindow(parentShell),
					      windowsReturn, countReturn-1);
			break;	/* from outer for */
		    }
		}
		XtFree((char *) windowsReturn);
	    }
	}
    }
}

/* Action routine for keyboard and mouse events */
/* ARGSUSED */
static void glwInput (GLwDrawingAreaWidget glw, XEvent *event,
		      String * params, Cardinal * numParams)
{
   GLwDrawingAreaCallbackStruct cb;
   
   cb.reason = GLwCR_INPUT;
   cb.event = event;
   cb.width = glw->core.width;
   cb.height = glw->core.height;
   XtCallCallbackList ((Widget) glw, glw->glwDrawingArea.inputCallback, &cb);
}

#ifdef __GLX_MOTIF
/* Provide a Motif-style create routine */
Widget GLwCreateMDrawingArea(Widget parent, char *name,
			     ArgList arglist, Cardinal argcount)
{
    return (XtCreateWidget (name, glwMDrawingAreaWidgetClass, parent, arglist,
			    argcount));
}
#endif
