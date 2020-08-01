STYLE_CSS ?= riak.css

PDF_OPTS := -r asciidoctor-mathematical -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-themesdir=pdf-resources/themes -a pdf-theme=KaiGenGothicCN -a pdf-fontsdir=pdf-resources/fonts

.PHONY: html
all: html pdf

.PHONY: html
html:
	asciidoctor -b html5 -a stylesdir=stylesheets -a stylesheet=$(STYLE_CSS) index.adoc

.PHONY: pdf
pdf:
	asciidoctor-pdf $(PDF_OPTS) index.adoc

.PHONY: print
print:
	asciidoctor-pdf -a media=prepress $(PDF_OPTS) index.adoc

