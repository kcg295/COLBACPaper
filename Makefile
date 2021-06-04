.PHONY: all clean

all: main cover

main: HorizontalSecurity.tex
	pdflatex HorizontalSecurity.tex
	pdflatex HorizontalSecurity.tex
	bibtex HorizontalSecurity
	pdflatex HorizontalSecurity.tex
	mkdir -p output
	mv HorizontalSecurity.pdf output

cover: CoverLetter/CoverLetter.tex
	pdflatex CoverLetter/CoverLetter.tex
	mkdir -p output
	mv CoverLetter.pdf output

clean:
	rm -v *.aux *.toc *.log *.out *.bbl *.blg
