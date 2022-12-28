#! smake

include $(ROOT)/usr/include/make/commondefs

LCINCS = -I../libtk
LLDLIBS = -lGLU -lGL -lXext -lX11 -lm

TARGETS = $(PROGFILES:.c=)

DFILES = \
	Makefile \
	README \
	1.rgb \
	2.rgb \
	3.rgb \
	4.rgb \
	$(NULL)

PROGFILES = \
	accum.c \
	bitmap1.c \
	bitmap2.c \
	copy.c \
	cursor.c \
	depth.c \
	eval.c \
	fog.c \
	font.c \
	line.c \
	logo.c \
	nurb.c \
	olympic.c \
	overlay.c \
	point.c \
	prim.c \
	quad.c \
	select.c \
	shape.c \
	sphere.c \
	star.c \
	stencil.c \
	stretch.c \
	teapot.c \
	texture.c \
	tri.c \
	wave.c \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

$(PROGFILES:.c=): $$@.o ../libtk/libtk.a
	$(CCF) -o $@ $@.o ../libtk/libtk.a $(LDFLAGS)

headers: $(_FORCE)

exports boot: headers default $(_FORCE)

INSTALLDIR = /usr/share/src/OpenGL/samples

install: exports
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples $(PROGFILES) $(DFILES)

