#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/keysym.h>
#include <GL/glx.h>
#include <GL/gl.h>
#include "tk.h"
#include "aux.h"

#if defined(__cplusplus) || defined(c_plusplus)
#define class c_class
#endif


static struct {
    int keyField;
    void (*KeyFunc)(void);
} keyTable[200];

static struct {
    int mouseField;
    void (*MouseFunc)(AUX_EVENTREC *);
} mouseDownTable[20], mouseUpTable[20], mouseLocTable[20];

static int keyTableCount = 0;
static int mouseDownTableCount = 0;
static int mouseUpTableCount = 0;
static int mouseLocTableCount = 0;
static GLenum displayModeType = 0;


static void DefaultHandleReshape(int w, int h)
{
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0.0, (GLdouble)w, 0.0, (GLdouble)h, -1.0, 1.0);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

static void DefaultHandleExpose(int w, int h)
{
}

static GLenum MouseLoc(int x, int y, GLenum button)
{
    AUX_EVENTREC info;
    GLenum flag;
    int i;

    flag = GL_FALSE;
    for (i = 0; i < mouseLocTableCount; i++) {
	if ((button & AUX_LEFTBUTTON) == mouseLocTable[i].mouseField) {
	    info.event = AUX_MOUSELOC;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_LEFTBUTTON;
	    (*mouseLocTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_RIGHTBUTTON) == mouseLocTable[i].mouseField) {
	    info.event = AUX_MOUSELOC;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_RIGHTBUTTON;
	    (*mouseLocTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_MIDDLEBUTTON) == mouseLocTable[i].mouseField) {
	    info.event = AUX_MOUSELOC;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_MIDDLEBUTTON;
	    (*mouseLocTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
    }
    return flag;
}

static GLenum MouseUp(int x, int y, GLenum button)
{
    AUX_EVENTREC info;
    GLenum flag;
    int i;

    flag = GL_FALSE;
    for (i = 0; i < mouseUpTableCount; i++) {
	if ((button & AUX_LEFTBUTTON) == mouseUpTable[i].mouseField) {
	    info.event = AUX_MOUSEUP;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_LEFTBUTTON;
	    (*mouseUpTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_RIGHTBUTTON) == mouseUpTable[i].mouseField) {
	    info.event = AUX_MOUSEUP;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_RIGHTBUTTON;
	    (*mouseUpTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_MIDDLEBUTTON) == mouseUpTable[i].mouseField) {
	    info.event = AUX_MOUSEUP;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_MIDDLEBUTTON;
	    (*mouseUpTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
    }
    return flag;
}

static GLenum MouseDown(int x, int y, GLenum button)
{
    AUX_EVENTREC info;
    GLenum flag;
    int i;

    flag = GL_FALSE;
    for (i = 0; i < mouseDownTableCount; i++) {
	if ((button & AUX_LEFTBUTTON) == mouseDownTable[i].mouseField) {
	    info.event = AUX_MOUSEDOWN;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_LEFTBUTTON;
	    (*mouseDownTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_RIGHTBUTTON) == mouseDownTable[i].mouseField) {
	    info.event = AUX_MOUSEDOWN;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_RIGHTBUTTON;
	    (*mouseDownTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
	if ((button & AUX_MIDDLEBUTTON) == mouseDownTable[i].mouseField) {
	    info.event = AUX_MOUSEDOWN;
	    info.data[AUX_MOUSEX] = x;
	    info.data[AUX_MOUSEY] = y;
	    info.data[AUX_MOUSESTATUS] = AUX_MIDDLEBUTTON;
	    (*mouseDownTable[i].MouseFunc)(&info);
	    flag |= GL_TRUE;
	}
    }
    return flag;
}

static GLenum KeyDown(int key, GLenum status)
{
    GLenum flag;
    int i;

    flag = GL_FALSE;
    if (keyTableCount) {
	for (i = 0; i < keyTableCount; i++) {
	    if (key == keyTable[i].keyField) {
		(*keyTable[i].KeyFunc)();
		flag |= GL_TRUE;
	    }
	}
    }
    return flag;
}

void auxExposeFunc(void (*Func)(int, int))
{
    tkExposeFunc(Func);
}

void auxReshapeFunc(void (*Func)(int, int))
{
    tkExposeFunc(Func);
    tkReshapeFunc(Func);
}

void auxIdleFunc(void (*Func)(void))
{
    tkIdleFunc(Func);
}

void auxKeyFunc(int key, void (*Func)(void))
{
    keyTable[keyTableCount].keyField = key;
    keyTable[keyTableCount++].KeyFunc = Func;
}

void auxMouseFunc(int mouse, int mode, void (*Func)(AUX_EVENTREC *))
{
    if (mode == AUX_MOUSEDOWN) {
	mouseDownTable[mouseDownTableCount].mouseField = mouse;
	mouseDownTable[mouseDownTableCount++].MouseFunc = Func;
    } else if (mode == AUX_MOUSEUP) {
	mouseUpTable[mouseUpTableCount].mouseField = mouse;
	mouseUpTable[mouseUpTableCount++].MouseFunc = Func;
    } else if (mode == AUX_MOUSELOC) {
	mouseLocTable[mouseLocTableCount].mouseField = mouse;
	mouseLocTable[mouseLocTableCount++].MouseFunc = Func;
    } 
}

void auxMainLoop(void (*Func)(void))
{
    tkDisplayFunc(Func);
    tkExec();
}

void auxInitPosition(int x, int y, int width, int height)
{
    tkInitPosition(x, y, width, height);
}

void auxInitDisplayMode(GLenum type)
{
    displayModeType = type;
    tkInitDisplayMode(type);
}

GLenum auxInitWindow(char *title)
{
    int useDoubleAsSingle = 0;

    if (tkInitWindow(title) == GL_FALSE) {
	if (AUX_WIND_IS_SINGLE(displayModeType)) {
	    tkInitDisplayMode(displayModeType|AUX_DOUBLE);
	    if (tkInitWindow(title) == GL_FALSE) {
		return GL_FALSE;
	    }
	    fprintf(stderr, "Can't initialize a single buffer visual.\n");
	    fprintf(stderr, "Will use a double buffer visual instead,");
	    fprintf(stderr, "only drawing into the front buffer.\n");
	    displayModeType = displayModeType | AUX_DOUBLE;
	    useDoubleAsSingle = 1;
	}
    }
    tkReshapeFunc(DefaultHandleReshape);
    tkExposeFunc(DefaultHandleExpose);
    tkMouseUpFunc(MouseUp);
    tkMouseDownFunc(MouseDown);
    tkMouseMoveFunc(MouseLoc);
    tkKeyDownFunc(KeyDown);
    auxKeyFunc(AUX_ESCAPE, auxQuit);
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClearIndex(0);
    glLoadIdentity();
    if (useDoubleAsSingle) {
        glReadBuffer(GL_FRONT);
	glDrawBuffer(GL_FRONT);
    }
    return GL_TRUE;
}

void auxCloseWindow(void)
{
    tkCloseWindow();
    keyTableCount = 0;
    mouseDownTableCount = 0;
    mouseUpTableCount = 0;
    mouseLocTableCount = 0;
}

void auxQuit(void)
{
    tkQuit();
}

void auxSwapBuffers(void)
{
    tkSwapBuffers();
}

Display *auxXDisplay(void)
{
    Display *ptr;
    
    tkGetSystem(TK_X_DISPLAY, (void *)&ptr);
    return ptr;
}

Window auxXWindow(void)
{
    Window ptr;
    
    tkGetSystem(TK_X_WINDOW, (void *)&ptr);
    return ptr;
}

void auxSetOneColor(int index, float r, float g, float b)
{
    tkSetOneColor(index, r, g, b);
}

void auxSetFogRamp(int density, int startIndex)
{
    tkSetFogRamp(density, startIndex);
}

void auxSetGreyRamp(void)
{
    tkSetGreyRamp();
}

void auxSetRGBMap(int size, float *rgb)
{
    tkSetRGBMap(size, rgb);
}

int auxGetColorMapSize(void)
{

    return tkGetColorMapSize();;
}

void auxGetMouseLoc(int *x, int *y)
{
    tkGetMouseLoc(x, y);
}
