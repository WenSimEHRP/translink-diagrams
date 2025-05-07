# include all .typ files, except mod.typ, readme-banner-art.typ, and those that ends with data.typ
TYP_FILES := $(shell find . -name '*.typ' | grep -v 'mod.typ\|readme-banner-art.typ\|data\.typ$$')
PDF_FILES := $(TYP_FILES:.typ=.pdf)

.PHONY: all clean

all: $(PDF_FILES)
clean:
	rm -f $(PDF_FILES)

%.pdf: %.typ Makefile translink.png
	typst c $< --root .
