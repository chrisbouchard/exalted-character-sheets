BASENAME := TepetHu

BIBFILE := ../ExaltedBooks.bib

TEXDIR := ../tex
TEXDEPS := $(wildcard $(TEXDIR)/*.tex)

.PHONY : all clean pdf

export bibtex_use = 2
export TEXINPUTS = ../tex:

all : pdf
pdf : $(BASENAME).pdf

$(BASENAME).pdf : $(BASENAME).tex \
    chapters/00_Summary.tex \
    chapters/01_Background.tex \
    chapters/02_Merits.tex \
    chapters/03_Charms.tex \
    Tepet.png \
    $(BIBFILE) $(TEXDEPS)
	latexmk -pdfxe -dvi- -ps- $<

clean :
	latexmk -C $(BASENAME).tex
	rm -f $(BASENAME).armor
	rm -f $(BASENAME).bbl
	rm -f $(BASENAME).charm
	rm -f $(BASENAME).run.xml
	rm -f $(BASENAME).stats
	rm -f $(BASENAME).weapons

