#! smake

include $(ROOT)/usr/include/make/commondefs

INSTALLDIR = /usr/share/src/OpenGL/examples

LCINCS = -I../libaux
LLDLIBS = -lGLU -lGL -lXext -lX11 -lm

TARGETS = $(PROGFILES:.c=)

DFILES = \
	Makefile \
	README \
	$(NULL)

HFILES = \
	jitter.h \
	$(NULL)

PROGFILES = \
	accanti.c \
	accnot.c \
	accpersp.c \
	accum.c \
	aim.c \
	alpha.c \
	alpha3D.c \
	anti.c \
	antiindex.c \
	antipindex.c \
	antipoint.c \
	antipoly.c \
	bezcurve.c \
	bezmesh.c \
	bezsurf.c \
	checker.c \
	checker2.c \
	chess.c \
	clip.c \
	colormat.c \
	cone.c \
	cube.c \
	curve.c \
	depthcue.c \
	disk.c \
	dof.c \
	dofnot.c \
	double.c \
	drawf.c \
	feedback.c \
	fog.c \
	fogindex.c \
	font.c \
	light.c \
	linelist.c \
	lines.c \
	list.c \
	list2.c \
	maplight.c \
	material.c \
	mipmap.c \
	model.c \
	movelight.c \
	nurbs.c \
	pickdepth.c \
	pickline.c \
	picksquare.c \
	plane.c \
	planet.c \
	planetup.c \
	polys.c \
	robot.c \
	sccolorlight.c \
	scene.c \
	scenebamb.c \
	sceneflat.c \
	select.c \
	simple.c \
	smooth.c \
	sphere.c \
	stencil.c \
	stroke.c \
	surface.c \
	tea.c \
	teaambient.c \
	teapots.c \
	texgen.c \
	texturesurf.c \
	trim.c \
	xfont.c \
	$(NULL)

default: $(TARGETS)

include $(COMMONRULES)

$(PROGFILES:.c=): $$@.o ../libaux/libaux.a
	$(CCF) -o $@ $@.o ../libaux/libaux.a $(LDFLAGS)

headers: $(_FORCE)

exports boot: headers default $(_FORCE)

install: exports
	$(INSTALL) -F $(INSTALLDIR) -idb oglsamp_samples.sw.samples $(PROGFILES) $(HFILES) $(DFILES)

