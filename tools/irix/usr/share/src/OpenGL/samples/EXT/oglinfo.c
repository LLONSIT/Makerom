#include <GL/glx.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <stdio.h>

int visual_request[] = { None }; /* don't need much of a visual */

main(int argc, char **argv)
{
  char *display_name = NULL;
  const GLubyte *string;
  Display       *dpy;
  int           screen_num;
  int           major, minor;
  int           dontcare; /* for returned arguments we don't care about */
  XVisualInfo   *vis;
  GLXContext    ctx;
  Window        root,  win;
  Colormap      cmap;
  XSetWindowAttributes swa;
  XEvent        event;

  /* parse arguments */
  if(argc > 1)
    if(!strcmp(argv[1],"-display"))
      display_name = argv[2];
    else {
      fprintf(stderr, "Usage: %s [-display <display>]\n",argv[0]);
      return -1;
    }

  /* get display */
  if (!(dpy = XOpenDisplay(display_name))) {
    fprintf(stderr,"Error: XOpenDisplay() failed.\n");
    return -1;
  }

  /* does the server know about OpenGL & GLX? */
  if(!XQueryExtension(dpy, "GLX", &dontcare, &dontcare, &dontcare)) {
    fprintf(stderr,"This system doesn't appear to support OpenGL\n");
    return -1;
  }
    

  /* find the glx version */
  if(glXQueryVersion(dpy, &major, &minor))
    printf("GLX Version: %d.%d\n", major, minor);
  else {
    fprintf(stderr, "Error: glXQueryVersion() failed.\n");
    return -1;
  }

  /* get screen number */
  screen_num = DefaultScreen(dpy);

/* This #ifdef isn't redundant. It keeps the build from breaking
** if you are building on a machine that has an old (1.0) version
** of glx.
**
** This program could still be *run* on a machine that has an old 
** version of glx, even if it was *compiled* on a version that has
** a new version.
**
** If compiled on a system with an old version of glx, then it will 
** never recognize glx extensions, since that code would have been
** #ifdef'ed out.
*/
#ifdef GLX_VERSION_1_1

  /*
  ** This test guarantees that glx, on the display you are inquiring,
  ** suppports glXQueryExtensionsString().
  */
  if(minor > 0 || major > 1)
    string = glXQueryExtensionsString(dpy, screen_num);
  else
    string = "";

  if(string)
    printf("GLX Extensions (client & server): %s\n",
	   string);
  else {
    fprintf(stderr, "Error: glXQueryExtensionsString() failed.\n");
    return -1;
  }

#endif

   /* get any valid OpenGL visual */
   if (!(vis = glXChooseVisual(dpy, screen_num, visual_request)))  {
     fprintf(stderr,"Error: glXChooseVisual() failed.\n");
     return -1;
     }

   /* get context */
   ctx = glXCreateContext(dpy,vis,0,GL_TRUE);

   /* root window */
   root = RootWindow(dpy,vis->screen);

   /* get RGBA colormap */
   cmap = XCreateColormap(dpy, root, vis->visual, AllocNone);

   /* get window */
   swa.colormap = cmap;
   swa.border_pixel = 0;
   swa.event_mask = StructureNotifyMask;
   win = XCreateWindow(dpy, root, 0, 0, 1, 1, 0, vis->depth,
		       InputOutput,vis->visual,
		       CWBorderPixel|CWColormap|CWEventMask,
		       &swa);

   glXMakeCurrent(dpy,win,ctx);

  string = glGetString(GL_VERSION);
  if(string)
    printf("OpenGL Version: %s\n", string);
  else {
    fprintf(stderr, "Error: glGetString(GL_VERSION) failed.\n");
    return -1;
  }

  string = glGetString(GL_EXTENSIONS);

  if(string)
    printf("OpenGL Extensions: %s\n", string);
  else {
    fprintf(stderr, "Error: glGetString(GL_EXTENSIONS) failed.\n");
    return -1;
  }

/*
** This #ifdef prevents a build failure if you compile on an a
** machine with an old GLU library. 
**
** If you build on a pre GLU 1.1 machine, you will never be able
** to get glu info, even if you run on a GLU 1.1 or latter machine,
** since the code has been #ifdef'ed out.
*/
#ifdef GLU_VERSION_1_1

  /*
  ** If the glx version is 1.1 or latter, gluGetString() is guaranteed
  ** to exist.
  */
  if(minor > 0 || major > 1)
    string = gluGetString(GLU_VERSION);
  else
    string = "1.0";

  if(string)
    printf("GLU Version: %s\n", string);
  else {
    fprintf(stderr, "Error: gluGetString(GLU_VERSION) failed.\n");
    return -1;
  }
  
  if(minor > 0 || major > 1)
    string = gluGetString(GLU_EXTENSIONS);
  else
    string = "";

  if(string)
    printf("GLU Extensions: %s\n", string);
  else {
    fprintf(stderr, "Error: gluGetString(GLU_EXTENSIONS) failed.\n");
    return -1;
  }


#endif

}
