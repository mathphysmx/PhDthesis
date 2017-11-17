%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         FORMATO DE TESIS FI UNAM                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% based on Harish Bhanderi's PhD/MPhil template, then Uni Cambridge
% http://www-h.eng.cam.ac.uk/help/tpl/textprocessing/ThesisStyle/
% corrected and extended in 2007 by Jakob Suckale, then MPI-iCBG PhD programme
% and made available through OpenWetWare.org - the free biology wiki

%                     Under GNU License v3

%-------------------------------------------------------------------
% PhDthesis version 2 style file by Jakob Suckale, 2007
% based on CUEDthesis version 1 by Harish Bhanderi 2002
% Modificaciones para FI-UNAM por Jesús Velázquez y Marco Ruiz, 2014
% Modificaciones para FI-UNAM Edgar G. Martínez 2016
%-------------------------------------------------------------------

%-------------------------- identification ---------------------
\ProvidesClass{TeX/config/UNAMFIThesis}

%If you want to use a Book style document then uncomment the following 3 lines and comment the above 8 report style lines:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
%\ifx\pdfoutput\undefined
\LoadClass[a4paper]{book}  % CAMBIAR "a4paper" POR "letterpaper" PARA TAMAÑO CARTA
%\else
%\LoadClass[pdftex, a4paper]{book}
%\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            				PAQUETES				             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage[a4paper,inner=2.6cm,outer=1cm]{geometry} % change twosided margins
\usepackage[spanish,activeacute,es-nodecimaldot,es-tabla]{babel} %es-nosectiondot
\usepackage[T1]{fontenc}
\usepackage{graphicx}
% \usepackage{subfig} % subfig and subfigure packages are deprecated. Incomptible with subcaption package
\usepackage{subcaption} % for clustered figures into one. Incompatible with subfigure package!!!
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{bbm} % to write the Real numbers symbol
\usepackage{appendix}
\usepackage{booktabs}
\usepackage{enumerate}
\usepackage[usenames,dvipsnames,svgnames,table]{xcolor}
\usepackage{standalone, tikz}
\usetikzlibrary{arrows} % for diamonds/rhombus
\usetikzlibrary{shapes.geometric} % for diamonds/rhombus
\usepackage{pgfplots}
\usepackage{datatool} % to load .csv ascii data file
\usepackage{filecontents}
\usepackage{color}
\usepackage{cite}
\usepackage{epigraph} % textual citations with author
\usepackage{caption}
\usepackage{longtable} % para tablas largas
\usepackage{multicol}  % unir columnas en tablas
\usepackage{multirow}  % unir filas en tablas
\usepackage{tabularx}
\usepackage{rotating}
\usepackage{lscape}
\usepackage{ragged2e}  % Para justificar frames con \justifying
\usepackage{listings}  %  Para que código de programación aparezaca en color 
%\usepackage{emptypage} %páginas estén completamente en blanco, sin encabezados ni número de página
\usepackage{enumitem}
%\usepackage{fancyhdr} %Editar encabezados en estilo book
\usepackage{emptypage} %páginas estén completamente en blanco, sin encabezados ni número de página
%\renewcommand{\headrulewidth}{0.5pt}
%\fancyheadoffset{1 cm}
\usepackage{natbib}  %Nuevo estilo para citar referencias
\usepackage{gensymb}  %Para símbolo ° con \degree
\usepackage{float}
\usepackage{wrapfig} %Figuras al lado de texto 
\usepackage[rflt]{floatflt} %Figuras flotantes entre el texto
\usepackage[nouppercase]{scrpage2} % encabezados en minuscula
\usepackage[Lenny]{fncychap}  % Personalización de los encabezados de capítulos
%\usepackage[titles,subfigure]{tocloft}  % Añade encabezados tipo fncychap a  ToC, LoF, y LoT
\usepackage[intoc,spanish]{nomencl} % load nomencl extension; include in TOC
\usepackage{blindtext}  % dummy text lorem ipsum  

\setcounter{secnumdepth}{3} %indica la profundidad de secciones para las los números. 
\setcounter{tocdepth}{3} %Para que aparezaca subsection en índice
\setlist[1]{itemsep=-3pt} %espacios entre \item


%\hypersetup{linktocpage} 
\def\jumpl{\left[\kern-0.15em\left[}
\def\jumpr{\right]\kern-0.15em\right]}
\def\Jumpl{\left[\kern-0.25em\left[}
\def\Jumpr{\right]\kern-0.25em\right]}

\renewcommand{\appendixname}{Ap\'endices} 
\renewcommand{\appendixtocname}{Ap\'endices} 
\renewcommand{\appendixpagename}{Ap\'endices}
%----------------------------------------------------------------------------------------
%	COMANDO PARA ESPECIFICAR ANCHO DE COLUMNA EN TABLAS
%----------------------------------------------------------------------------------------
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\centering\raggedright\arraybackslash\hspace{0pt}}p{#1}}
%----------------------------------------------------------------------------------------
%	ESFERAS 3D PARA LISTAS
%----------------------------------------------------------------------------------------
\newcommand*{\itembolasazules}[1]{ % l
	\footnotesize\protect\tikz[baseline=-3pt] %
	\protect\node[scale=.5, circle, shade, ball color=blue]{\color{white}\Large\bf#1};}

%----------------------------------------------------------------------------------------
%	COLOR PARA EL CÓDIGO DE PROGRAMACIÓN
%----------------------------------------------------------------------------------------
\lstset{ % 
	language=Python, % lenguaje 
	basicstyle=\bfseries\ttfamily,	% Códigos con fuente TrueType. 
	keywordstyle=\color{blue}, 
	commentstyle=\color{brown}, 
	backgroundcolor=\color{gray!30}, 
	showstringspaces=false,
	xleftmargin=-1cm,		% Margen izquierdo.
	xrightmargin=-1cm		% Margen derecho.
}%



\newcommand{\nref}[2]{\hyperref[#2]{#1 \ref*{#2}}}  %  Para que aparezca texto en la referencias, en lugar de números


%----------------------------------------------------------------------------------------
%	COLORES DE ENLACES HYPERREF
%----------------------------------------------------------------------------------------
%\hypersetup{
%	linkbordercolor = {black},
%	citecolor    = {blue}
%}

%----------------------------------------------------------------------------------------
%	ENCABEZADO EN MINUSCULAS, EL DE CAPITULO EN MAYUSCULAS
%----------------------------------------------------------------------------------------
\pagestyle{scrheadings} %encabezados


%:-------------------------- Glossary/Abbrev./Symbols -----------------------
% Learn how show nomenclature visit:
% http://tex.stackexchange.com/questions/78779/miktex-nomencl-couldnt-find-input-index-file
%\nomrefpage % to include page numbers after abbrevations
%\renewcommand{\nomname}{Nomenclatura} % rename nomenclature
\renewcommand{\nomlabel}[1]{\textbf{#1} \dotfill} % make abbreviations bold
\makenomenclature % used to be \makeglossary
% used to be for sorting into categories:
\renewcommand{\nomgroup}[1]{%
	\vspace*{4pt}
	\item[\bfseries
	\ifthenelse{\equal{#1}{S}}{S\'imbolos}{%
	\ifthenelse{\equal{#1}{G}}{S\'imbolos griegos}{%
	\ifthenelse{\equal{#1}{T}}{Super\'indices}{%
	\ifthenelse{\equal{#1}{B}}{Sub\'indices}{%
	{}}}}}%
	]\vspace*{4pt}
}

%if you use a macTeX 2008 or later, use the ifpdf package
%\usepackage{ifpdf}
%\ifpdf
%%-->
%%--> Google.com search "hyperref options"
%%--> 
%%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%%-->
%\usepackage[pdftex, plainpages = false, pdfpagelabels, 
%			pdfpagelayout = OneColumn, % display single page, advancing flips the page - Sasa Tomic
%			bookmarks,
%			bookmarksopen = true,
%			bookmarksnumbered = true,
%			breaklinks = true,
%			linktocpage,
%			pagebackref,
%			colorlinks = true,
%			linkcolor = red,
%			linkbordercolor = black,
%			urlcolor  = blue,
%			citecolor = blue,
%			anchorcolor = green,
%			hyperindex = true,
%			]{hyperref} 
%\usepackage{graphicx}
%\DeclareGraphicsExtensions{.png, .jpg, .pdf}
%\pdfcompresslevel=9
%\else
\usepackage[bookmarks,
			bookmarksopen = true,
			bookmarksnumbered = true,
			breaklinks = true,
			linktocpage,
			pagebackref,
			colorlinks = true,
			linkcolor = black, %
			linkbordercolor = black,
			urlcolor  = black, %
			citecolor = black, %
			anchorcolor = green,
			hyperindex = true,
			]{hyperref}
\DeclareGraphicsExtensions{.pdf, .png, .eps, .ps}
%\fi
\graphicspath{{./figs/results/}{./figs/TeX/}{./figs/other/}}

%:-------------------------- page layout -----------------------
%A4 (210 mm x 297 mm) settings
%: Uncomment this secion for two-sided printing
% ------------------------------

\setlength{\oddsidemargin}{-0.4mm} % margen izquierdo de una pagina impar: 2.5cm
\setlength{\evensidemargin}{-10.4mm} % margen izquierdo de una pagina par: 1.5cm
\setlength{\textwidth}{175mm}
%\setlength{\oddsidemargin}{3cm}  % margen izquierdo de una pagina impar
%\setlength{\evensidemargin}{2cm} % margen izquierdo de una pagina par
%\setlength{\topmargin}{1mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
%\setlength{\textheight}{20.84cm}
%\setlength{\textwidth}{14.5cm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}

%:-------------------------- title page layout -----------------------

% starts roman page numbering until chapter 1
% important to avoid two pages numbered 1 and 2 which may cause bad links
% bug: cover i + back side ii and then numbering restarts with i; should be iii
\renewcommand{\thepage}{\roman{page}}

% ******************************************************************************
% **************************** Macro Definitions *******************************
% ******************************************************************************
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\newcommand{\@degreedate}{}
\newcommand{\degreedate}[1]{\renewcommand{\@degreedate}{#1}}

% The full (unabbreviated) name of the degree
\newcommand{\@degreethesis}{}
\newcommand{\degreethesis}[1]{\renewcommand{\@degreethesis}{#1}}

% The name of your department(eg. Engineering, Maths, Physics)
\newcommand{\@dept}{}
\newcommand{\dept}[1]{\renewcommand{\@dept}{#1}}

% The name of your college (eg. King's)
\newcommand{\@college}{}
\newcommand{\college}[1]{\renewcommand{\@college}{#1}}

% The name of your University
\newcommand{\@university}{}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}

% Defining the crest
\newcommand{\@escudouniversidad}{}
\newcommand{\escudouniversidad}[1]{\renewcommand{\@escudouniversidad}{#1}}

\newcommand{\@escudofacultad}{}
\newcommand{\escudofacultad}[1]{\renewcommand{\@escudofacultad}{#1}}

%Definiendo al director de tesis:
\newcommand{\@director}{}
\newcommand{\director}[1]{\renewcommand{\@director}{#1}}

%Definiendo el lugar
\newcommand{\@lugar}{}
\newcommand{\lugar}[1]{\renewcommand{\@lugar}{#1}}

%Definiendo la portada
\newif\ifportada

% Submission Text
\newcommand{\submissiontext}{This dissertation is submitted for the degree of }

% keywords (These keywords will appear in the PDF meta-information
% called `pdfkeywords`.)
\newcommand{\@keywords}{}
\newcommand{\keywords}[1]{\renewcommand{\@keywords}{#1}}

% subjectline (This subject will appear in the PDF meta-information
% called `pdfsubject`.)
\newcommand{\@subject}{}
\newcommand{\subject}[1]{\renewcommand{\@subject}{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.
\newenvironment{alwayssingle}{%
	\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
	\else\newpage\fi}
{\if@restonecol\twocolumn\else\newpage\fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            PORTADA de la UNAM              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{%
	\thispagestyle{empty}
	\pagebreak
	\begin{alwayssingle}
	\begin{center}
    \includegraphics[width=4cm, height=4cm]{figs/other/unam_negro}
	\end{center}
		\begin{center}		 
			%% Barra izquierda - Escudos
			%\hskip -2cm
			%\begin{minipage}[c][11cm][s]{3cm}
				%\begin{center}
					%\ifportada
				    %\includegraphics[height=2.6cm]{unam_azul_5x5cm}\\[10pt]
				    %\colorvrule{Oro}{3pt}{13cm}\\[10pt]
				    %\hskip -0.4mm
				    %\hskip2pt\colorvrule{Azul}{2.5pt}{13cm}
				    %\hskip -0.4mm
				    %\colorvrule{Oro}{3pt}{13cm}\\[10pt]
				    %\includegraphics[height=2.6cm]{fi_azul}
				    %\else
				    %\includegraphics[width=75pt]{unam_negro}\\[10pt]
				    %\vrule width2pt height15cm
				    %\hskip8pt
				    %\vrule width4pt height15cm
				    %\hskip8pt
				    %\vrule width2pt height15cm\\[10pt]
				    %\includegraphics[width=110pt]{logoUNAMposgrado__Black}
				    %\fi	
				%\end{center}
			%\end{minipage}\quad
			%% Barra derecha - Títulos
			\begin{minipage}[c][9.5cm][s]{12cm}
				\begin{center}
					% Barra superior
					{\large \scshape Universidad Nacional Aut\'onoma de M\'exico}
					%\vspace{.3cm}
					\ifportada
					%\hrule height2.5pt
					%\colorhrule{Azul}{2.5pt}
					%\vspace{.1cm}
					%\hrule height1pt
					%\colorhrule{Oro}{1pt}
					\else
					%\hrule height2pt
					%\vspace{.2cm}
					%\hrule height4pt
					%\vspace{.2cm}
					%\hrule height2pt
					%\fi
					%\vspace{.3cm}
					{\scshape  POSGRADO EN CIENCIAS DE LA TIERRA\\
					INSTITUTO DE GEOF\'ISICA\\ \scshape Exploraci\'on, 
					Aguas Subterr\'aneas, Modelaci\'on y Percepci\'on Remota}
					
					%\vspace{.3cm}
					
					
					% Título del trabajo
					\vspace{1 cm}
					
					{\Large \scshape {\@title}}
					
					\vspace{1cm}
					
					% Tipo de trabajo
					\makebox[8cm][s]{\Huge T E S I S}\\[8pt]
					QUE PARA OPTAR POR EL GRADO DE:\\[5pt]
					\textbf{{\@degreethesis}}\\[40pt]
					PRESENTA:\\[5pt]
					\textbf{{\@author}}
					
					\vspace{1cm}
					
					{\small DIRECTOR DE TESIS:\\ {\@director\\Instituto Mexicano del Petr\'oleo}}\\
					{\small COMITE TUTOR:\\ {Dr. Eric Morales Casique\\Instituto de Geolog\'ia\\ 
					Dr. Ricardo Casar Gonz\'alez}}
					
					\vspace{0.5cm}
					
					%{\small CODIRECTOR DE TESIS:\\ en caso de que aplique}
					
					\vspace{0.9cm}
					
					{\hfill \@lugar}{, }{\@degreedate}
					
				\end{center}
			\end{minipage}
			
		\end{center}
		\null\vfill
	\end{alwayssingle}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%:-------------------------- front matter layout -----------------------

%% DEDICATION
%%
%% The dedication environment makes sure the dedication gets its
%% own page and is set out in verse format.
%\newenvironment{dedication}
%{\begin{alwayssingle}
%		\pagestyle{empty}
%		\vspace*{1.5cm}
%		{\large{}}
%		\vspace{0.5cm}
%		\begin{flushright}\itshape}
%		{\end{flushright} \end{alwayssingle}}


%% ACKNOWLEDGEMENTS
%%
%% The acknowledgements environment puts a large, bold, centered
%% "Acknowledgements" label at the top of the page. The acknowledgements
%% themselves appear in a quote environment, i.e. tabbed in at both sides, and
%% on its own page.
%\newenvironment{acknowledgements}
%{\pagestyle{empty}
%	\begin{alwayssingle}
%		\vspace*{1.5cm}
%		{\chapter*{Reconocimientos}}
%		\vspace{0.5cm}}
%	{\end{alwayssingle}}

%% The acknowledgementslong environment puts a large, bold, centered
%% "Acknowledgements" label at the top of the page. The acknowledgement itself
%% does not appears in a quote environment so you can get more in.
%\newenvironment{acknowledgementslong}
%{\pagestyle{empty}
%	\begin{alwayssingle}
%		\vspace*{1.5cm}
%		{\chapter*{Reconocimientos}}
%		\vspace{0.5cm}}
%	{\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.
%\newenvironment{abstracts} {\begin{alwayssingle} 
%		\begin{center}
%%			\vspace*{1.5cm}
%			{\chapter*{Resumen} % encabezado
%				\addcontentsline{toc}{chapter}{Resumen} % para que aparezca en el 'indice
%				\markboth{Resumen}{Resumen}
%			}
%		\end{center}
%		\vspace{0.5cm}}
%	{\end{alwayssingle}}

%%The abstractlong environment puts a large, bold, centered "Abstract" label at
%%the top of the page. The abstract itself does not appears in a quote
%%environment so you can get more in.
%\newenvironment{abstractslong} {\begin{alwayssingle} \pagestyle{empty}
%		\begin{center}
%			\vspace*{1.5cm}
%			{\chapter*{Resumen}}
%		\end{center}
%		\vspace{0.5cm}}
%	{\end{alwayssingle}}

%%The abstractseparate environment is for running of a page with the abstract
%%on including title and author etc as required to be handed in separately
%\newenvironment{abstractseparate} {\begin{alwayssingle} \pagestyle{empty}
%		\vspace*{-1in}
%		\begin{center}
%			{ \Large {\bfseries {\@title}} \par}
%			{{\large \vspace*{1ex} \@author} \par}
%			{\large \vspace*{1ex}
%				{{UNAM} \par}
%				{{Facultad de Ingeniería} \par}
%				\vspace*{1ex}
%				{{\it \submittedtext} \par}
%				{\it {\@degree} \par}
%				\vspace*{2ex}
%				{\@degreedate}}
%		\end{center}}
%		{\end{alwayssingle}}
	
%%Statement of originality if required
%\newenvironment{declaration} {\begin{alwayssingle} \pagestyle{empty}
%		\begin{center}
%			\vspace*{1.5cm}
%			{\chapter*{Declaración de autenticidad}}
%		\end{center}
%		\vspace{0.5cm}}
%	{\vspace{1.5cm}\flushright{\@author. \@lugar, \@degreedate}\end{alwayssingle}}


%:-------------------------- page numbers: roman+arabic -----------------------

% ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

%\newenvironment{romanpages}
%{
%	\setcounter{page}{1}
%	\renewcommand{\thepage}{\roman{page}}
%} % close romanpage env't

{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}
