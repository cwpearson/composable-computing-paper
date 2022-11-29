SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

main.pdf: main.tex main.bib
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

.PHONY: clean
clean:
	rm -f main.pdf *.aux *.bbl *.blg *.log *.fdb_latexmk *.fls