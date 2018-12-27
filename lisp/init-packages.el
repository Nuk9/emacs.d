;;; package -- summary
;;; Commentary:
;;; List of all packages used by this emacs.d config
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'init-elpa)

;;; ivy and smex
(require-package-load 'swiper)
;;; Evil
(require-package-load 'evil-leader)
(require-package-load 'evil)
(require-package-load 'key-chord)

;;; Magit
(require-package 'magit)

(provide 'init-packages)

;;; init-packages.el ends here
