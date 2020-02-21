(package-initialize)
(require 'org-install)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (shell . t)
   (python . t)
   (ruby . t)
   (gnuplot . t)
   (emacs-lisp . t)
   (C . t)
   (dot . t)))

(require 'ox-beamer)
(require 'ox-latex)

(setq org-export-allow-bind-keywords t)
(setq org-latex-listings 'minted)

(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(add-to-list 'org-latex-packages-alist '("" "minted"))

(setq org-src-fontify-natively t)
