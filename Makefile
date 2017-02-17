PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash

DIST = dist
SRC = src

CSS_MAIN = main.scss

.PHONY : default clean

default: $(DIST)/main.css $(DIST)/main.js

$(DIST)/main.css : $(SRC)/*.scss
	node-sass $(SRC)/$(CSS_MAIN) -o $(DIST)

$(DIST)/main.js : $(SRC)/main.js
	babel src -d dist

clean:
	rm -rf dist/*
