main.pdf main.aux: main.tex main.bbl
	pdflatex main

main.bbl: main.bib
	bibtex main

main.bib: main.aux
	bash tools/adsbib.sh main
	bash tools/fix.sh

clean:
	rm -f main.aux main.bbl main.blg main.log main.out main.pdf
