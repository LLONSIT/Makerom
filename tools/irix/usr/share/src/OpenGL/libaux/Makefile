include $(ROOT)/usr/include/make/commondefs

LIBTKDIR = ../libtk
INSTALLDIR = /usr/share/src/OpenGL/libaux

LCINCS = -I. -I$(LIBTKDIR)
LLDLIBS = -lXext -lX11 -lm

TARGETS = libaux.a

DFILES = \
	Makefile \
	$(NULL)

HFILES = \
	3d.h \
	aux.h \
	teapot.h \
	$(NULL)

CFILES = \
	aux.c \
	font.c \
	image.c \
	shapes.c \
	teapot.c \
	vect3d.c \
	xform.c \
	$(NULL)

OFILES = \
	$(LIBTKDIR)/cursor.o \
	$(LIBTKDIR)/event.o \
	$(LIBTKDIR)/font.o \
	$(LIBTKDIR)/getset.o \
	$(LIBTKDIR)/image.o \
	$(LIBTKDIR)/shapes.o \
	$(LIBTKDIR)/window.o \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

$(TARGETS): $(OBJECTS) $(LIBTKDIR)/libtk.a
	rm -f $@
	$(AR) crl $@ $(OFILES) $(OBJECTS)

headers: $(_FORCE)

exports boot: headers default $(_FORCE)

install: exports
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples $(TARGETS) $(CFILES) $(HFILES) $(DFILES)

