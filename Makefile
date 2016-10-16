WORKSHEETS =\
			complex_algebra.pdf\
			sets_of_solutions.pdf\
			#

FIGURES =\
		 sets_of_solutions/mass_horizontal.pdf

all: $(WORKSHEETS)

%.pdf: % $(FIGURES)
	cd $< && make --makefile=../Makefile.ws

%.pdf: %.svg
	inkscape -f $< -A $@
