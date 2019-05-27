default:	main.pdf

all:		default

main.pdf:	*.tex \
		$(HOME)/home/personal_data/*.tex \
		$(HOME)/home/vruiz.bib \
		PFC.bbl \
		agreements.bbl \
		articles.bbl \
		books.bbl \
		companies.bbl\
		contracts.bbl \
		courses.bbl \
		inbooks.bbl \
		inproceedings.bbl \
		mi-tesis.tex \
		organizations.bbl \
		phdthesis.bbl \
		projects.bbl \
		subjects.bbl \
		transfer_projects.bbl \
		workshops.bbl

PFC.bbl:	../PFC.tex ../PFC.bib PFC.bst
	pdflatex PFC; bibtex PFC

agreements.bbl:	../agreements.tex ../agreements.bib agreements.bst
	pdflatex agreements; bibtex agreements

articles.bbl:	../articles.tex ../../grupo_bib/vruiz.bib ../../grupo_bib/igarcia.bib articulos.bst
	pdflatex articles; bibtex articles

books.bbl:	../books.tex ../../grupo_bib/vruiz.bib articulos.bst
	pdflatex books; bibtex books

companies.bbl:	../companies.tex ../companies.bib companies.bst
	pdflatex companies; bibtex companies

courses.bbl:	../courses.tex ../courses.bib courses.bst
	pdflatex courses; bibtex courses

inbooks.bbl:	../inbooks.tex ../inbooks.bib inbooks.bst
	pdflatex inbooks; bibtex inbooks

inproceedings.bbl:	../inproceedings.tex ../../grupo_bib/vruiz.bib articulos.bst
	pdflatex inproceedings; bibtex inproceedings

phdthesis.bbl:	../phdthesis.tex ../phdthesis.bib phdthesis.bst
	pdflatex phdthesis; bibtex phdthesis

projects.bbl:	../projects.tex ../projects.bib projects.bst
	pdflatex projects; bibtex projects

subjects.bbl:	../subjects.tex ../subjects.bib subjects.bst
	pdflatex subjects; bibtex subjects

transfer_projects.bbl:	../transfer_projects.tex ../transfer_projects.bib transfer_projects.bst
	pdflatex transfer_projects; bibtex transfer_projects

workshops.bbl:	../workshops.tex ../workshops.bib workshops.bst
	pdflatex workshops; bibtex workshops

objetives = transfer_projects.bbl articles.bbl books.bbl inproceedings.bbl phdthesis.bbl PFC.bbl courses.bbl

texput.pdf:	$(objetives) texput.tex ../*.tex
	pdflatex texput
	pdflatex texput

all:	  texput.pdf

clean:
	rm *.bbl *.aux *.pdf *.log *.blg *.out

info:
	@echo $(objetives)
