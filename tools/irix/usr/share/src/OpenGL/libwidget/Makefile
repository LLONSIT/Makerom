include $(ROOT)/usr/include/make/commondefs

LCINCS = -I.
LLDLIBS = -lGLU -lGL -lXext -lX11 -lXm -lXt -lm

TARGETS = libGLw.a $(PROGFILES:.c=)

DFILES = \
	Makefile \
	README \
	$(NULL)

HFILES = \
	GLwDrawA.h \
	GLwDrawAP.h \
	GLwMDrawA.h \
	GLwMDrawAP.h \
	$(NULL)

CFILES = \
	GLwDrawA.c \
	GLwMDrawA.c \
	GLwDAUtil.c \
	$(NULL)

PROGFILES = \
	simple.c \
	double.c \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

libGLw.a: $(OBJECTS)
	rm -f $@
	$(AR) crl $@ $(OBJECTS)

$(PROGFILES:.c=): $$@.o libGLw.a
	$(CCF) -o $@ $@.o libGLw.a $(LDFLAGS)

headers: $(_FORCE)
	$(INSTALL) -F /usr/include/X11/GLw -idb oglsamp_root.sw.widget $(HFILES)
	$(INSTALL) -F /usr/include/GL -idb oglsamp_root.sw.widget $(HFILES)

exports boot: headers default $(_FORCE)
	$(INSTALL) -F /usr/lib -idb oglsamp_root.sw.widget libGLw.a

INSTALLDIR = /usr/share/src/OpenGL/libwidget
install: exports
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_root.sw.widget libGLw.a $(PROGFILES) $(CFILES) $(HFILES) $(DFILES)
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples libGLw.a $(PROGFILES) $(CFILES) $(HFILES) $(DFILES)

