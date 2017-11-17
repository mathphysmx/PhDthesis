## Compile the whole latex document
run at the linux terminal
$bash makefile.sh

## SOURCE FILE STRUCTURE.
There could also be a 'temp' directory in which all unfinished files can be stored.

TODO:
	maindirectory/
		makefile or shell script
		main.tex
		main.pdf
		referencespath.md # for books or articles in my computer or online
		main.rmd # notice that .Rnw is faster and more neat than .rmd
		LiterateProgramming.Rnw  # use this and omit the "codes" folder if the document is small up to 20 or 30 pages maximum
		docTemplate.docx # for conversion with pandoc
		todo.md # list of improvements to do in a future
		readme.md # this file explain the structure of the directories

		TeX/ # sections or chapters. Figures, and references and .bib working OK. No need to specify to parent directory of figures because of LaTeX \graphicspath
			chapter1.tex
			chapter2.tex
			references.bib
			style_preamble.sty
				\graphicspath {{./},{./figs/}}

		tables/
			mytable.csv

		figs/ # directory with figures from diferent sources(./codes/code1Document.Rnw,	)
			results/ # results from computer codes. images exported
				fig1.eps
				fig1.pdf
				fig1.png
			TeX/ # hand made figures (tikz or pstricks latex libraries),
			other/ #  taken from internet, photos, etc
				figMadeInCorelDraw.png

		figsPptx/ # Presentations made for this project.
			results.pptx
			results.html # html5 presentation or shiny R interactive presentation
			beamerPresentation.tex

		codes/ # this directory can be a complete project. other names for this directory can be: 'soft'
			code1Document.Rnw  # figures can be sent to one level above ("../figs/) or create a folder here (in the current directory) to store the figures
			code1Document.tex  # result from code1Document.Rnw to add tables and figures in chapter1.tex
			code1BeamerPresentation.Rnw 	# for figures to have the right dimension
			scripts/
				script1.R
			results/
				r1.RData
				mytable.csv
			src / # source functions
				code1.R
				code2.py
				code3.cpp
			datasets/
				data.txt
				data.csv
			bin/ # compiled binaries when using C(++) or fortran
	
			readme.md # local README file for the code development project
			todo.md # local     todo file for the code development project
		.git/

see also:
	google: code development project tree structure
	http://vim-latex.sourceforge.net/documentation/latex-suite/latex-project.html
	https://www.sharelatex.com/learn/Management_in_a_large_project

