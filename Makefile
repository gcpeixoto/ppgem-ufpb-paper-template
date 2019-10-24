# ppgem-template-paper Latex Makefile
# provided by Gustavo Anjos

all: 
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main	
abstract:
	pdflatex abstract

clean:
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg)

deepclean: clean
	(rm -f main.pdf)
	


