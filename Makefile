proj=Dissertation

$(proj).pdf: abstract.tex Dissertation.tex prelim.tex Background.tex Application.tex Results.tex Conclusion.tex
	pdflatex $(proj)
	bibtex $(proj)
	pdflatex $(proj)
	rm *.aux
clean:
	rm -f *.aux $(proj).pdf $(proj).bbl \
$(proj).log $(proj).blg $(proj).synctex.gz
