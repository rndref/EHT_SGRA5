f: fast
v: view
c: clean

main.pdf: main.tex main.bbl
	pdflatex main
	pdflatex main

main.aux: main.tex
	pdflatex main

main.bbl: main.bib
	bibtex main
	bash tools/fix.sh

main.bib: main.aux
	bash tools/adsbib.sh main

fast:
	pdflatex main

view:
	open -a texshop main.pdf # this is for Mac

clean:
	rm -f main.aux main.bib main.bbl main.blg main.log main.out main.pdf
