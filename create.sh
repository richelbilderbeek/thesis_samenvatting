#!/bin/bash
# 
# Creates the PDF
#
echo "pdflatex 1/4"
pdflatex samenvatting_header
bibtex thesis_samenvatting > /dev/null
echo "pdflatex 2/4"
pdflatex samenvatting_header > /dev/null
echo "pdflatex 3/4"
pdflatex samenvatting_header > /dev/null
echo "pdflatex 4/4"
pdflatex samenvatting_header

mv samenvatting_header.pdf samenvatting.pdf
