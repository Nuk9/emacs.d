;;; package -- summary
;;; Commentary:
;;; List of all packages used by this emacs.d config
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'init-elpa)

;;; Theme
(require-package 'color-theme-sanityinc-solarized)
;;; ivy and smex
(require-package-load 'swiper)
;;; Dired
;; (require-package-load 'dired-sort)
;;; Evil
(require-package-load 'evil-leader)
(require-package-load 'evil)
(require-package-load 'key-chord)

;;; Project Management
(require-package-load 'find-file-in-project)

;;; Magit
(require-package 'magit)

(provide 'init-packages)

;;; init-packages.el ends here
