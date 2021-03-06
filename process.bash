#!/usr/bin/bash

cd /cv

pdflatex cv.tex
pdflatex cv-english.tex

rm ./*.log

mkdir build


mv cv.pdf ./build/cv.pdf
mv cv-english.pdf ./build/cv-english.pdf

cd build

zip cv.zip cv.pdf cv-english.pdf

echo "Done!"