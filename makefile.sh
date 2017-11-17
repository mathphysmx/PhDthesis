#!/bin/bash

# to use this script the following apps must be installed on linux
# texlive full
# https://pandoc.org/
# pandoc-citeproc   https://github.com/jgm/pandoc-citeproc
# https://www.imagemagick.org/script/index.php
# https://github.com/dawbarton/pdf2svg

# these can be implemented in a true makefile
# see /media/paco/myhdd/sumsUp/short intro to makefile.pdf

DUMPDIR=./TeX/output
MAINTEX=Tesis_fmt
texBib=./TeX/references
TIKZFIGS=./figs/TeX

pdflatex -synctex=1 -interaction=nonstopmode  "$MAINTEX".tex
pdflatex -synctex=1 -interaction=nonstopmode  "$MAINTEX".tex
# latex --src-specials -interaction=nonstopmode  "MAINTEX".tex
bibtex "$MAINTEX"
pdflatex -synctex=1 -interaction=nonstopmode  "$MAINTEX".tex
pdflatex -synctex=1 -interaction=nonstopmode  "$MAINTEX".tex
pdflatex -synctex=1 -interaction=nonstopmode  "$MAINTEX".tex

## Open the generated .pdf file with the default pdf-viewer
## http://askubuntu.com/questions/43264/how-to-open-a-pdf-file-from-terminal
xdg-open $MAINTEX.pdf

# remove all previous files within $DUMPDIR. The reason is to have an clean compilation directory. No previous, possibly manually put there files.
rm -rf $DUMPDIR/*

mv *.aux -t $DUMPDIR
mv *.bbl -t $DUMPDIR
mv *.blg -t $DUMPDIR
mv *.brf -t $DUMPDIR
mv *.fdb_latexmk -t $DUMPDIR
mv *.fls -t $DUMPDIR
mv *.lof -t $DUMPDIR
mv *.log -t $DUMPDIR
mv *.lot -t $DUMPDIR
mv *.nlo -t $DUMPDIR
mv *.out -t $DUMPDIR
mv *.toc -t $DUMPDIR

# convert to .docx to check grammar and spelling:
# http://tex.stackexchange.com/questions/268196/how-to-convert-latex-to-word-using-pandoc-and-keep-citations-as-numeral
# pandoc -s $MAINTEX.tex -o $MAINTEX.docx		
# pandoc -s $MAINTEX.tex -o $MAINTEX.docx	 --reference-docx=docTemplate.docx
## for the next it needs the pacakge pandoc-citeproc
# pandoc -s $MAINTEX.tex --bibliography=$texBib.bib -o $MAINTEX.docx		
# pandoc -s $MAINTEX.tex --bibliography=$texBib.bib -o $MAINTEX.docx --reference-docx=docTemplate.docx
pandoc -s $MAINTEX.tex --bibliography=$texBib.bib --default-image-extension=.png --reference-docx=docTemplate.docx   -o $MAINTEX.docx
# pandoc -s $MAINTEX.tex --metadata bibliography=TeX/$texBib.bib --filter pandoc-citeproc --default-image-extension=.png --reference-docx=docTemplate.docx   -o $MAINTEX.docx

pwd
# convert images 
cd $TIKZFIGS 
# revome all previous .log,.aux,... in the figs/TeX/ directory
find . -regextype posix-egrep -regex ".*\.(aux|lof|log|lot|fls|out|toc|fmt|fot|cb|cb2|fdb_latexmk)$" -type f -delete
# pdf to png
mogrify -verbose -format png ./*.pdf
for file in *.pdf
do
    # convert pdf to eps
    pdftops -eps "${file}"
    # convert pdf to svg
    fileRoot=${file%.pdf}
    echo $fileRoot
    pdf2svg ${fileRoot}.pdf ${fileRoot}.svg
done

pwd
cd ../../ # return to main project directory

## if exported from pandoc file converter
# gvim utb.tex
# 	:%s/\.png/
# 	:%s/\.jpeg/
# 	:%s/\.jpg/
# 	:%s/\/image/\/utb/
# 	:%s/\\begin{quote\}/
# 	:%s/\\end{quote\}/
# 	:%s/\\toprule/\\hline/
# 	:%s/\\midrule/\\hline/
# 	:%s/\\bottomrule/\\hline/
# 	:%s/\\headrule/\\hline/
# 	:%s/á/\\'a/g
# 	:%s/é/\\'e/g
# 	:%s/í/\\'i/g
# 	:%s/ó/\\'o/g
# 	:%s/ú/\\'u/g
# 	:%s/ü/\\:u/g
# 	:%s/ñ/\\~n/g
# 	:w
# 	:q
