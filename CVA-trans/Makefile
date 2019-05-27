default:	texput.pdf

all:	texput.pdf

TEXINPUTS := ":.:..:$(HOME)/home/personal_data:"
BIBINPUTS := "$(HOME)/home:"

# Regla para generar los .bbl a partir de los .tex
%.bbl:	%.tex
	(export TEXINPUTS=${TEXINPUTS}; latex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)

texput.pdf:	*.tex \
		../*.tex \
		$(HOME)/home/personal_data \
		$(HOME)/home/vruiz.bib \
		proyectos_transferencia.bbl \
		contratos_transferencia.bbl \
		convenios_transferencia.bbl \
		workshops.bbl \
		companies.bbl \
		organizations.bbl \
		ResearcherID_URL.tex \
		ORCID_URL.tex \
		Scholar_URL.tex \
		UAL_URL.tex \
		GitHub_URL.tex

ResearcherID_URL.tex:	$(HOME)/home/personal_data/ResearcherID.tex
	(printf '\href{https://www.researcherid.com/rid/'; cat $^; printf '}{Información en ResearcherID}\n') > $@

ORCID_URL.tex:	$(HOME)/home/personal_data/ORCID.tex
	(printf '\url{https://orcid.org/'; cat $^; printf '}\n') > $@

Scholar_URL.tex:	$(HOME)/home/personal_data/Google_user.tex
	(printf  '\href{https://scholar.google.es/citations?hl=es&user='; cat $^; printf '}{Información en Google Académico}\n') > $@

UAL_URL.tex:	$(HOME)/home/personal_data/UAL_user.tex
	(printf  '\url{https://www.ual.es/~'; cat $^; printf '}\n') > $@

GitHub_URL.tex:	$(HOME)/home/personal_data/GitHub_user.tex
	(printf  '\url{https://github.com/'; cat $^; printf '}\n') > $@

# Regla para generar los .html a partir de los .tex
%.pdf: %.tex
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)
	(export TEXINPUTS=${TEXINPUTS}; pdflatex $*)

clean:
	rm -f *.out *.aux *.bbl *.blg *.log texput.pdf

