#!/bin/bash

# export to pdf
pdflatex ecc19.tex

# push to github 
git add .
git commit -m "$2"
git push -u  origin $1
