proj=Dissertation

$(proj).pdf: abstract.tex acknowledge.tex dedication.tex Dissertation.tex frontispiece.tex prelim.tex publication.tex
	pdflatex $(proj)
	#bibtex $(proj)
	pdflatex $(proj)
	rm *.aux
clean:
	rm -f *.aux $(proj).pdf $(proj).bbl \
$(proj).log $(proj).blg $(proj).synctex.gz
