#!/bin/bash

# three parameters:
# $1 - boolean if pdf should be exported from ecc19.tex file 
# $2 - origin branch in which should be pushed (master)
# $3 - commit message
# example usage bash upload.sh true master "this is some commit message"

if $1; then
	# export to pdf
	pdflatex ecc19.tex
	bibtex ecc19
	pdflatex ecc19.tex
	pdflatex ecc19.tex	
fi

# push to github 
git add .
git commit -m "$3"
git push -u  origin $2
