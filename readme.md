## Suggestion

To see only the important files and not all LaTeX compilation files (.aux, .log, .out, ...) clone this repository and use a [File Manager](https://en.wikipedia.org/wiki/File_manager) with the ability to hide files by extension such as [ranger](http://ranger.nongnu.org/), [Nautilus](https://projects.gnome.org/nautilus/screenshots.html), [Nemo](https://github.com/linuxmint/nemo), [Caja](https://github.com/mate-desktop/caja) or [Thunar](https://wiki.archlinux.org/index.php/thunar). These files can be useful, for instance, for faster compilation, correct .pdf rendering or for error debugging. See also [How To Hide Files And Folders in File Manager Without Renaming](https://www.2daygeek.com/how-to-hide-files-and-folders-in-file-manager-without-renaming/).

## Compile the whole latex document
Run at the linux terminal

`$ sh makefile.sh`

## SOURCE FILE STRUCTURE

```
├── code
│   ├── datasets  
│   ├── R
│   └── scripts
├── figs
│   ├── other     % figures downloaded, pictures, or edited with an image editor
│   ├── results   % figures exported from R, python
│   └── TeX       % tikz figures
├── pptx          % presentations (beamer/latex, .pptx, html5)
├── prewriting
├── review        % review and comments from advisors
└── TeX              % References (.bib), sections or chapters (.tex) LaTeX files
    ├── config       % LaTeX .sty, 
    │   └── Escudos
    ├── output       % Latex compilation filex (.aux, .log,...)
    └── tables       % tables of the document in .tex files, csv tables
```

## Files

 - docTemplate.docx  % for conversion with pandoc
 - readme.md         % README file for the code development project
 - todo.md           % ToDo file. list of task/improvements to do in a future
 - LiterateProgramming.Rnw  % use this and omit the "codes" folder if the document is small up to 20 or 30 pages maximum
 - main.rmd          % notice that .Rnw is faster and more neat than .rmd

In each subdirectory can be local readme.md and todo.md files.
