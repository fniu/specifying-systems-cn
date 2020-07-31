STYLE_CSS ?= riak.css

.PHONY: html
html:
	asciidoctor -a lang=zh -b html5 -a stylesdir=stylesheets -a stylesheet=$(STYLE_CSS) index.adoc

.PHONY: pdf
pdf:
	asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN index.adoc

