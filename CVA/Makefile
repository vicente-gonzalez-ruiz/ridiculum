default:	main.pdf

all:		default

main.pdf:	*.tex \
		$(HOME)/home/personal_data/*.tex \
		$(HOME)/home/vruiz.bib \
		PFCs.bbl

PFCs.bbl:	../PFCs.tex PFCs.bst ../PFCs.tex ~/home/vruiz.bib

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

TEXINPUTS += :..:.:$(HOME)/home/personal_data/
BIBINPUTS += :$(HOME)/home/
