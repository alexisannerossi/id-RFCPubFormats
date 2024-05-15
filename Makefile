# makefile for rfcpubformats

XML2RFC = xml2rfc
DRAFTS = draft-rossi-rfcpubformats.txt

${DRAFTS}:	%.txt:	%.xml
	rm -f $@ ${@:.txt=.html}
	${XML2RFC} --text $<
	${XML2RFC} --html $<

%.xml:	%.md
	kramdown-rfc $< > tmp && mv tmp $@
