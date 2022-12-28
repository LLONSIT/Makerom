#include "tk.h"
#include "aux.h"

#if defined(__cplusplus) || defined(c_plusplus)
#define class c_class
#endif


static GLuint bitmapBase;


void auxCreateFont(void)
{
    bitmapBase = glGenLists(256);
    if (tkCreateBitmapFont(bitmapBase) == GL_FALSE) {
        auxQuit();
    }
}

void auxDrawStr(char *str)
{

    glPushAttrib(GL_LIST_BIT);
    glListBase(bitmapBase);
    glCallLists(strlen(str), GL_UNSIGNED_BYTE, (unsigned char *)str);
    glPopAttrib();
}
