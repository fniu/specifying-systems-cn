
STYLE_CSS := stylesheets/riak.css

.PHONY: html
html:
	asciidoctor -d book -b html5 -a stylesheet=$(STYLE_CSS) index.adoc
