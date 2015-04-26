#All files to be built with pdflatex
PSOURCES := aluminium.tex emegir.tex flourish.tex jjschematic.tex oxygen.tex oxygenb.tex qabuum.tex sf.tex sio2.tex
#All files to be built with xelatex
XSOURCES := $(filter-out $(PSOURCES), $(wildcard *.tex))
#Dependencies not built by make
XDEPS := AGS.pdf BGS.pdf line161616.png line162116.png line162120.png atypey.png atypez.png vors.png
PTARGETS := $(PSOURCES:.tex=.pdf)
XTARGETS := $(XSOURCES:.tex=.pdf)
PDFLATEX := pdflatex --shell-escape --extra-mem-top=10000000 --save-size=80000
XELATEX := xelatex --shell-escape --extra-mem-top=10000000 --save-size=80000

.PHONY: all clear rebuild clean distclean

all: xelatex
	@-rm -f *.dat

pdflatex: $(PTARGETS)

xelatex: $(XTARGETS)

%.pdf: %.tex
	@[ '$<' == '$(findstring $<,$(PSOURCES))' ] && $(PDFLATEX) $< || $(XELATEX) $<
	@[ '$<' == '$(findstring $<,$(PSOURCES))' ] && $(PDFLATEX) $< || $(XELATEX) $<

#Dependencies
$(XTARGETS): $(XDEPS) $(PTARGETS) 
$(PTARGETS): sf.tikz

rebuild: clean all

clear:
	@-rm -f *.aux *.log *.dat

clean: clear
	@-rm -f $(PTARGETS) $(XTARGETS) 

distclean: clean
