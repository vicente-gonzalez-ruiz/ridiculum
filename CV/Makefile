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

PFCs.bbl:	PFCs.tex PFCs.bst ~/home/vruiz.bib

agreements.bbl:	agreements.tex contracts.bst ../agreements.tex ~/home/vruiz.bib

articles.bbl:	articles.tex articles.bst ../articles.tex ~/home/vruiz.bib

books.bbl:	books.tex books.bst ../books.tex ~/home/vruiz.bib

companies.bbl:	companies.tex companies.bst ../companies.tex ~/home/vruiz.bib

contracts.bbl:	contracts.tex contracts.bst ../contracts.tex ~/home/vruiz.bib

courses.bbl:	courses.tex courses.bst ../courses.tex ~/home/vruiz.bib

inbooks.bbl:	inbooks.tex inbooks.bst ../inbooks.tex ~/home/vruiz.bib

inproceedings.bbl:	 inproceedings.tex inproceedings.bst ../inproceedings.tex ~/home/vruiz.bib

organizations.bbl:	 organizations.tex organizations.bst ../organizations.tex ~/home/vruiz.bib

phdthesis.bbl:	phdthesis.tex phdthesis.bst ../phdthesis.tex ~/home/vruiz.bib

projects.bbl:	projects.tex projects.bst ../projects.tex ~/home/vruiz.bib

subjects.bbl:	subjects.tex subjects.bst ../subjects.tex ~/home/vruiz.bib

transfer_projects.bbl:	transfer_projects.tex projects.bst ../transfer_projects.tex ~/home/vruiz.bib

workshops.bbl:	 workshops.tex workshops.bst ../workshops.tex ~/home/vruiz.bib

clean:
	rm *.bbl *.aux *.pdf *.log *.blg *.out

%.pdf:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	@while ( grep "Rerun to get cross-references" 		\
                        $*.log > /dev/null ); do		\
                echo '** Re-running LaTeX **';			\
                (export TEXINPUTS=${TEXINPUTS}; pdflatex --interaction errorstopmode $*);	\
        done

%.bbl:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)

TEXINPUTS += :$(HOME)/home/personal_data/
BIBINPUTS += :$(HOME)/home/
