default: HorizontalSecurity.tex
	pdflatex HorizontalSecurity.tex
	pdflatex HorizontalSecurity.tex
	bibtex HorizontalSecurity
	pdflatex HorizontalSecurity.tex
