;;; package -- summary
;;; Commentary:
;;; List of all packages used by this emacs.d config
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'init-elpa)

;;; Theme
(require-package 'color-theme-solarized)
;;; ivy and smex
(require-package-load 'swiper)
(require-package-load 'ivy)
;;; Dired
(require-package-load 'dired+)
(require-package-load 'dired-sort)
;;; Evil
(require-package-load 'evil-leader)
(require-package-load 'evil)
(require-package-load 'vim-empty-lines-mode)
(require-package-load 'powerline)
(require-package-load 'key-chord)
(require-package-load 'airline-themes)

;;; Project Management
(require-package-load 'find-file-in-project)

(provide 'init-packages)

;;; init-packages.el ends here
