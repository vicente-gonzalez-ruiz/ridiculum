texput.pdf:	texput.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex texput)
	(export TEXINPUTS=${TEXINPUTS}; pdflatex texput)

pdf:	texput.pdf

all:	pdf

clean:
	rm -f *.out *.aux *.bbl *.blg *.log texput.pdf

objetives:
	@echo texput.pdf

info:	objetives

TEXINPUTS += :$(HOME)/home/personal_data/

