#! smake

include $(ROOT)/usr/include/make/commondefs

LCINCS = -I../../libtk
LLDLIBS = -lGLU -lGL -lXext -lX11 -lm

TARGETS = $(PROGFILES:.c=)

DFILES = \
	Makefile \
	$(NULL)

PROGFILES = \
	abgr.c \
	blendeq.c \
	blendxor.c \
	oglinfo.c \
	surfgrid.c \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

$(PROGFILES:.c=): $$@.o ../../libtk/libtk.a
	$(CCF) -o $@ $@.o ../../libtk/libtk.a $(LDFLAGS)

headers: $(_FORCE)

exports boot: headers default $(_FORCE)

INSTALLDIR = /usr/share/src/OpenGL/samples/EXT

install: exports
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples $(PROGFILES) $(DFILES)

