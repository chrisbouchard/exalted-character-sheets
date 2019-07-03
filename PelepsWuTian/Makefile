BIBFILE := ../ExaltedBooks.bib

TEX_DIR := ../tex
TEX_DEPS := $(wildcard $(TEX_DIR)/*.tex)

.PHONY : all clean pdf

export bibtex_use = 2
export TEXINPUTS = ../tex:

all : pdf
pdf : PelepsWuTian.pdf

PelepsWuTian.pdf : PelepsWuTian.tex \
    chapters/01_Background.tex \
    chapters/02_Merits.tex \
    chapters/03_Charms.tex \
    Peleps.png \
    Makefile $(BIBFILE) $(TEX_DEPS)
	latexmk -pdfxe -dvi- -ps- $<

clean :
	latexmk -C PelepsWuTian.tex

