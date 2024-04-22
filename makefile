ALL=$(wildcard *.tex)
MAIN=main.tex
BUILD=build
SHELL=/bin/bash

all:  ## compile
	mkdir -p $(BUILD)
	xelatex  -output-directory=$(BUILD) $(MAIN)

clean:  ## Clean LaTeX and output figure files
	rm -rf $(BUILD)

