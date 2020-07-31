#simple makefile for updating the site.

include config.mk

.SUFFIXES: .md .html

all: sitedata
sitedata: $(CONF) $(HTML)

.md.html:
	$(MARKDOWN) $< > $@
	./htmlcrap $@

clean:
	rm -f $(HTML)

.PHONY: publish clean sitedata
