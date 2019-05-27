default:	main.pdf

all:		default

main.pdf:	*.tex \
		$(HOME)/home/personal_data/*.tex \
		$(HOME)/home/vruiz.bib \
		agreements.bbl \
		companies.bbl \
		contracts.bbl \
		organizations.bbl \
		transfer_projects.bbl \
		workshops.bbl

agreements.bbl:	agreements.tex contracts.bst ../PFCs.tex ~/home/vruiz.bib
companies.bbl:	companies.tex companies.bst ../PFCs.tex ~/home/vruiz.bib
organizations.bbl:	organizations.tex organizations.bst ../PFCs.tex ~/home/vruiz.bib
transfer_projects.bbl:	transfer_projects.tex projects.bst ../PFCs.tex ~/home/vruiz.bib
workshops.bbl:	workshops.tex workshops.bst ../PFCs.tex ~/home/vruiz.bib

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
