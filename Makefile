BASE_NAME := PelepsWuTian

BIBFILE := $(BASE_NAME).bib

TEX_DIR := tex
TEX_DEPS := $(wildcard $(TEX_DIR)/*.tex)

IMAGE_DIR := img
IMAGE_DEPS := $(wildcard $(IMAGE_DIR)/*)

CHAPTER_DIR := chapters
CHAPTER_DEPS := $(wildcard $(CHAPTER_DIR)/*.tex)

.PHONY : all clean pdf

export bibtex_use = 2

all : $(BASE_NAME).pdf

pdf : $(BASE_NAME).pdf

chapters.tex : $(CHAPTER_DEPS)
	bin/gen-input-list.sh $(CHAPTER_DIR) > $@

$(BASE_NAME).pdf : $(BASE_NAME).tex Makefile chapters.tex $(BIBFILE) $(TEX_DEPS) $(IMAGE_DEPS)
	latexmk -pdfxe -dvi- -ps- $<

clean :
	latexmk -C
	rm -f chapters.tex

