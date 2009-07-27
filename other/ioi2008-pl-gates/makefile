#
# Ogolny makefile do obslugi dokumentow Latexowych
#
TEX  = $(wildcard [a-z]*.tex)
PS   = $(patsubst %.tex,%.ps,$(TEX))
PDF  = $(patsubst %.tex,%.pdf,$(TEX))
HTML = $(patsubst %.tex,%.html,$(TEX))

LATEX2HTML_OPT = -dir tmp/ -init_file ./.latex2html-init

all:  ps pdf

ps: $(PS) 

pdf: $(PDF)

html: $(HTML)

%.ps: %.dvi
	dvips $*.dvi -o $*.ps

%.pdf: %.dvi
	dvipdf $*.dvi
#	for i in *.eps; do epstopdf $$i; done
#	pdflatex $*.tex
#	pdflatex $*.tex	

%.dvi: %.tex
	latex $*.tex
	latex $*.tex	

%.html: %.tex .latex2html-init
	rm -rf tmp
	mkdir tmp
	latex2html $(LATEX2HTML_OPT) $*.tex
	mv -f tmp/$*.html tmp/$*.css tmp/$*-img*.png .
	rm -rf tmp

mrproper: clean
	rm -f *.ps
	rm -f *.pdf
	rm -rf tmp
	rm -f *.css
	rm -f *.png
	rm -f *.html

clean:
	rm -f *~
	rm -f *.log
	rm -f *.aux
	rm -f *.dvi
	rm -f *.err
	rm -f *.inf
