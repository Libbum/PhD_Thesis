#!/bin/bash

cd figures
make
cd ..
latexmk -pvc -pdf -bibtex thesis.tex
