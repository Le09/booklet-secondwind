ALL=$(wildcard *.tex)
MAIN=main
OUT=SecondWind
BUILD=build
SHELL=/bin/bash

all: pdf

$(BUILD):
	mkdir -p $(BUILD)

pdf: $(BUILD)/$(OUT).pdf
$(BUILD)/$(OUT).pdf: $(BUILD) $(wildcard *.tex)
	xelatex -output-directory=$(BUILD) $(MAIN).tex
	mv $(BUILD)/$(MAIN).pdf $(BUILD)/$(OUT).pdf

clean:
	rm -rf $(BUILD)

