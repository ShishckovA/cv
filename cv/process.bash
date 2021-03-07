#!/usr/bin/bash

cd /cv

pdflatex -interaction=nonstopmode cv.tex
pdflatex -interaction=nonstopmode cv-english.tex

rm ./*.log

mkdir build


mv cv.pdf ./build/cv.pdf
mv cv-english.pdf ./build/cv-english.pdf

cd build

zip cv.zip cv.pdf cv-english.pdf

echo "Done!"