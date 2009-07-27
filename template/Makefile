#
# Makefile for building bundles of task statements
# Knows how to rerun latex etc.
#
# Bits from http://i30www.ira.uka.de/teaching/theses/guide/template/Makefile
#

LATEX=pdflatex
PDFS=$(patsubst %.tex,%.pdf,$(wildcard *.tex))

RERUN='(There were undefined references|Rerun to get (cross-references|the bars) right)'

all: $(PDFS)

%.pdf: %.tex
	@echo "====> LaTeX first pass"
	@$(LATEX) $<
	@if egrep -q $(RERUN) $*.log ; then echo "====> LaTeX rerun" && $(LATEX) $<; fi
	@if egrep -q $(RERUN) $*.log ; then echo "====> LaTeX rerun" && $(LATEX) $<; fi

.PHONY: clean
clean:
	rm -f $(PDFS) *.log *.aux *.bbl *.blg *.toc 

