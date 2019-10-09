#TEXINPUTS += "$(HOME)/home/personal_data/:..:.
TEXINPUTS += ":..:.:$(HOME)/home/personal_data"
BIBINPUTS += ":$(HOME)/home"

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
		research_projects.bbl \
		subjects.bbl \
		transference_projects.bbl \
		workshops.bbl

PFCs.bbl:	../PFCs.tex PFCs.bst ~/home/vruiz.bib
agreements.bbl:	../agreements.tex contracts.bst ~/home/vruiz.bib
articles.bbl:	../articles.tex articles.bst ~/home/vruiz.bib
books.bbl:	../books.tex books.bst ~/home/vruiz.bib
companies.bbl:	../companies.tex companies.bst ~/home/vruiz.bib
contracts.bbl:	../contracts.tex contracts.bst ~/home/vruiz.bib
courses.bbl:	../courses.tex courses.bst ~/home/vruiz.bib
inbooks.bbl:	../inbooks.tex inbooks.bst ~/home/vruiz.bib
inproceedings.bbl:	 ../inproceedings.tex inproceedings.bst ~/home/vruiz.bib
organizations.bbl:	 ../organizations.tex organizations.bst ~/home/vruiz.bib
phdthesis.bbl:	../phdthesis.tex phdthesis.bst ~/home/vruiz.bib
research_projects.bbl:	../research_projects.tex projects.bst ~/home/vruiz.bib
subjects.bbl:	../subjects.tex subjects.bst ~/home/vruiz.bib
transference_projects.bbl:	../transference_projects.tex projects.bst ~/home/vruiz.bib
workshops.bbl:	 ../workshops.tex workshops.bst ~/home/vruiz.bib

clean:
	rm -f *.bbl *.aux *.pdf *.log *.blg *.out

%.pdf:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	@while ( grep "Rerun to get cross-references" 		\
                        $*.log > /dev/null ); do		\
                echo '** Re-running LaTeX **';			\
                (export TEXINPUTS=${TEXINPUTS}; pdflatex --interaction errorstopmode $*);	\
        done

%.bbl:	../%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)
