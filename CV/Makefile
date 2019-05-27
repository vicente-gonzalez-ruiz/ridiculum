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
		../mi-tesis.tex \
		organizations.bbl \
		phdthesis.bbl \
		projects.bbl \
		subjects.bbl \
		transfer_projects.bbl \
		workshops.bbl

PFC.bbl:	../PFC.tex ~/home/vruiz.bib PFC.bst

agreements.bbl:	../agreements.tex ~/home/vruiz.bib contract.bst

articles.bbl:	../articles.tex ~/home/vruiz.bib article.bst

books.bbl:	../books.tex ~/home/vruiz.bib book.bst

companies.bbl:	../companies.tex ~/home/vruiz.bib company.bst

contracts.bbl:	../contracts.tex ~/home/vruiz.bib contract.bst

courses.bbl:	../courses.tex ~/home/vruiz.bib course.bst

inbooks.bbl:	../inbooks.tex ~/home/vruiz.bib inbook.bst

inproceedings.bbl:	../inproceedings.tex ~/home/vruiz.bib inproceeding.bst

organizations.bbl:	../organizations.tex ~/home/vruiz.bib organization.bst

phdthesis.bbl:	../phdthesis.tex ~/home/vruiz.bib phdthesis.bst

projects.bbl:	../projects.tex ~/home/vruiz.bib project.bst

subjects.bbl:	../subjects.tex ~/home/vruiz.bib subject.bst

transfer_projects.bbl:	../transfer_projects.tex ~/home/vruiz.bib project.bst

workshops.bbl:	../workshops.tex ~/home/vruiz.bib workshop.bst

clean:
	rm *.bbl *.aux *.pdf *.log *.blg *.out

%.pdf:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)

%.bbl:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)

TEXINPUTS += :$(HOME)/home/personal_data/
BIBINPUTS += :$(HOME)/home/
