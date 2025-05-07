# include all .typ files, except mod.typ, readme-banner-art.typ, and those that ends with data.typ
TYP_FILES := $(shell find . -name '*.typ' | grep -v 'mod.typ\|readme-banner-art.typ\|data\.typ$$')
PDF_FILES := $(TYP_FILES:.typ=.pdf)
PNG_FILES := $(TYP_FILES:.typ=.png)

.PHONY: all pdf png clean

all: pdf png
pdf: $(PDF_FILES)
png: $(PNG_FILES)
clean:
	rm -f $(PDF_FILES) $(PNG_FILES)

%.pdf: %.typ Makefile translink.png
	typst c $< --root .

%.png: %.typ Makefile translink.png
	typst c $< --root . -f png
