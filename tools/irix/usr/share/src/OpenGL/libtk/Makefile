include $(ROOT)/usr/include/make/commondefs

INSTALLDIR = /usr/share/src/OpenGL/libtk

LCINCS = -I.
LLDLIBS = -lXext -lX11 -lm

TARGETS = libtk.a

DFILES = \
	Makefile \
	README \
	$(NULL)

HFILES = \
	private.h \
	tk.h \
	$(NULL)

CFILES = \
	cursor.c \
	event.c \
	font.c \
	getset.c \
	image.c \
	shapes.c \
	window.c \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

$(TARGETS): $(OBJECTS)
	rm -f $@
	$(AR) crl $@ $(OBJECTS)

headers: $(_FORCE)

exports boot: headers default $(_FORCE)

install: exports headers default
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples $(TARGETS) $(CFILES) $(HFILES) $(DFILES)

