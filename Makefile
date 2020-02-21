IMGS=
DATA=

all: debug.pdf
	echo Done

debug.pdf: $(IMGS) $(DATA) debug.org Makefile
	emacs debug.org --batch -l emacs-init.el -f org-latex-export-to-pdf

debug_pres.pdf: $(IMGS) $(DATA) debug.org Makefile
	emacs debug.org --batch -l emacs-init.el -f org-beamer-export-to-pdf
