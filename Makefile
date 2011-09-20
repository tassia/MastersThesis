SOURCE=thesis-tassia

pdf:
	pdflatex $(SOURCE).tex

vis: pdf
	evince $(SOURCE).pdf &

all: pdf
	makeindex $(SOURCE).idx && bibtex $(SOURCE) && pdflatex $(SOURCE).tex && pdflatex $(SOURCE).tex

clean :
	@rm -f *.aux *.bbl *.blg *.log *.out *.lof *.lot *.toc *.idx *.ilg *.ind
