default:	main.pdf

all:		default

main.pdf:	*.tex \
		$(HOME)/home/personal_data/*.tex \
		$(HOME)/home/vruiz.bib \
		PFCs.bbl \
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

PFCs.bbl:	PFCs.tex PFCs.bst ../PFCs.tex ~/home/vruiz.bib

agreements.bbl:	agreements.tex contracts.bst ../agreements.tex ~/home/vruiz.bib

articles.bbl:	articles.tex articles.bst ../articles.tex ~/home/vruiz.bib

books.bbl:	books.tex books.bst ../books.tex ~/home/vruiz.bib

companies.bbl:	companies.tex companies.bst ../companies.tex ~/home/vruiz.bib

contracts.bbl:	contracts.tex contracts.bst ../contracts.tex ~/home/vruiz.bib

courses.bbl:	courses.tex courses.bst ../courses.tex ~/home/vruiz.bib

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
