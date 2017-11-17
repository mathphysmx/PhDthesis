# http://yihui.name/knitr/options/#chunk_options
# see https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf
# opts_knit$set(global.par = TRUE) # TRUE to enable graphics::par()  

knitr::opts_chunk$set(
		      warning = FALSE, # suppress any R warnings from being included in the final document
		      message = FALSE, # suppress any R messages from being included in the final document
		      version=R.version.string,
		      echo=FALSE, # indicates that the code will not be shown in the final document (though any results/output would still be displayed)
		      include = TRUE, # use 'include=FALSE' to have the chunk evaluated, but neither the code nor its output displayed. without LaTeX \includegraphic
		      # root.dir = '/tmp', # root directory
		      fig.path='../figs/results/', # '' = root directory. 
		      # dev.args = list(res = 72), # 1 inches = 72 dpi
		      # fig.width=3, fig.height=2, # figures default size
		      dev=c('pdf',
			    'cairo_ps', # .eps from 'grDevices::postscript' not work with latex compiler
			     # 'tikz',
			    'png'
			    #, 'svg', 'jpeg'
			    ),

		      # out.extra = 'keepaspectratio = TRUE',
		      fig.show = "asis", cache = FALSE
		      )
