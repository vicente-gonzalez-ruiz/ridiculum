default:	main.pdf

all:		default

main.pdf:	*.tex \
		$(HOME)/home/personal_data/*.tex \
		$(HOME)/home/vruiz.bib \
		agreements.bbl \
		companies.bbl \
		contracts.bbl \
		organizations.bbl \
		transference_projects.bbl \
		workshops.bbl

agreements.bbl:	../agreements.tex contracts.bst ~/home/vruiz.bib
companies.bbl:	../companies.tex companies.bst ~/home/vruiz.bib
organizations.bbl:	../organizations.tex organizations.bst ~/home/vruiz.bib
transference_projects.bbl:	../transference_projects.tex projects.bst ~/home/vruiz.bib
workshops.bbl:	../workshops.tex workshops.bst ~/home/vruiz.bib

clean:
	rm -f *.bbl *.aux *.pdf *.log *.blg *.out

%.pdf:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	@while ( grep "Rerun to get cross-references" 		\
                        $*.log > /dev/null ); do		\
                echo '** Re-running LaTeX **';			\
                (export TEXINPUTS=${TEXINPUTS}; pdflatex --interaction errorstopmode $*);	\
        done

%.bbl:	../%.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)

TEXINPUTS += :..:.::$(HOME)/home/personal_data/
BIBINPUTS += :$(HOME)/home/
