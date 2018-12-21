proyectos.bbl:	../proyectos.tex ../proyectos.bib proyectos.bst
	pdflatex proyectos; bibtex proyectos

revistas.bbl:	../revistas.tex ../../grupo_bib/vruiz.bib ../../grupo_bib/igarcia.bib articulos.bst
	pdflatex revistas; bibtex revistas

libros.bbl:	../libros.tex ../../grupo_bib/vruiz.bib articulos.bst
	pdflatex libros; bibtex libros

congresos.bbl:	../congresos.tex ../../grupo_bib/vruiz.bib articulos.bst
	pdflatex congresos; bibtex congresos

contratos.bbl:	../contratos.tex ../contratos.bib contratos.bst
	pdflatex contratos; bibtex contratos

PFC.bbl:	../PFC.tex ../PFC.bib PFC.bst
	pdflatex PFC; bibtex PFC

cursos.bbl:	../cursos.tex ../cursos.bib cursos.bst
	pdflatex cursos; bibtex cursos

objetives = proyectos.bbl revistas.bbl libros.bbl congresos.bbl contratos.bbl PFC.bbl cursos.bbl

texput.pdf:	$(objetives) texput.tex ../*.tex
	pdflatex texput
	pdflatex texput

all:	  texput.pdf

clean:
	rm *.bbl *.aux *.pdf *.log *.blg *.out

info:
	@echo $(objetives)