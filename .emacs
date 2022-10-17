(setq user-emacs-directory "~/.emacs.d") 

(package-initialize)
(require 'package)
(require 'use-package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))

(use-package org
  :ensure t)

(use-package evil
  :ensure t)
(evil-mode 1)

(org-babel-load-file "~/.emacs.d/init.el")
(org-babel-load-file "~/.emacs.d/myinit.org")
