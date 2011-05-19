all:
	pdflatex thesis-tassia.tex && bibtex thesis-tassia && pdflatex thesis-tassia.tex && pdflatex thesis-tassia.tex

clean :
	@rm -f *.aux *.bbl *.blg *.log *.out
