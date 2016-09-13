proj=Dissertation

$(proj).pdf: abstract.tex dedication.tex Dissertation.tex prelim.tex introduction.tex parachute.tex entrainment.tex
	pdflatex $(proj)
	bibtex $(proj)
	pdflatex $(proj)
	rm *.aux
clean:
	rm -f *.aux $(proj).pdf $(proj).bbl \
$(proj).log $(proj).blg $(proj).synctex.gz
