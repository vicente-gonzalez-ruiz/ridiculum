default:	index.html

all:	default entries

index.html:	*.tex \
		../*.tex \
		$(HOME)/home/personal_data \
		$(HOME)/home/vruiz.bib \
		articles.bbl \
		NI_articles.bbl \
		subjects.bbl \
		books.bbl \
		contracts.bbl \
		courses.bbl \
		courses_received.bbl \
		inbooks.bbl \
		inproceedings.bbl \
		PFCs.bbl \
		phdthesis.bbl \
		research_projects.bbl \
		transference_projects.bbl \
		teaching_projects.bbl \
		OSPs.bbl \
		ResearcherID_URL.tex \
		ORCID_URL.tex \
		Scholar_URL.tex \
		UAL_URL.tex \
		GitHub_URL.tex

ResearcherID_URL.tex:	$(HOME)/home/personal_data/ResearcherID.tex
	(printf '\url{https://www.researcherid.com/rid/'; cat $^; printf '}\n') > $@

ORCID_URL.tex:	$(HOME)/home/personal_data/ORCID.tex
	(printf '\url{https://orcid.org/'; cat $^; printf '}\n') > $@

Scholar_URL.tex:	$(HOME)/home/personal_data/Google_user.tex
	(printf  '\url{https://scholar.google.es/citations?hl=es&user='; cat $^; printf '}\n') > $@

UAL_URL.tex:	$(HOME)/home/personal_data/UAL_user.tex
	(printf  '\url{https://www.ual.es/~'; cat $^; printf '}\n') > $@

GitHub_URL.tex:	$(HOME)/home/personal_data/GitHub_user.tex
	(printf  '\url{https://github.com/'; cat $^; printf '}\n') > $@

# Regla para generar los .bbl a partir de los .tex
%.bbl:	../%.tex
	(export TEXINPUTS=${TEXINPUTS}; latex $*)
	(export BIBINPUTS=${BIBINPUTS}; bibtex $*)

# Regla para generar los .html a partir de los .tex
%.html: %.tex
	(export TEXINPUTS=${TEXINPUTS}; latex $*)
	(export TEXINPUTS=${TEXINPUTS}; latex $*)
	(export TEXINPUTS=${TEXINPUTS}; latex $*)
	(export TEXINPUTS=${TEXINPUTS}; htlatex $* "tex4ht.cfg, charset=utf-8" " -cunihtf -utf8")
#       (export TEXINPUTS=${TEXINPUTS}; tth $* > $*.html)

clean:
	rm -f *.bbl *.blg *.log *.out *.aux *.html *.dvi *.idv *.lg *.css *.4ct *.4tc *.tmp *.xref ResearcherID_URL.tex ORCID_URL.tex Scholar_URL.tex UAL_URL.tex GitHub_URL.tex

mrproper:
	make clean
	rm *.bib

entries:
	for i in `grep citation articles.aux inproceedings.aux | cut -f 2 -d "{" | cut -f 1 -d "}"`; do bibtool -X $$i $(HOME)/home/vruiz.bib -o $$i.bib -- 'delete.field={quality quality_long url history abstract es_abstract}'; done

publish:
	scp index.html dali.hpca.ual.es:public_html/index.html
	scp index.css dali.hpca.ual.es:public_html/index.css
	scp *.bib dali.hpca.ual.es:public_html/papers

TEXINPUTS := ".:..:$(HOME)/home/personal_data:"
BIBINPUTS := "$(HOME)/home:"

