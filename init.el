;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-elpa)

(require 'init-theme)
(require 'init-buffer)
(require 'init-window)
(require 'init-edit)

(require 'init-helm)
(require 'init-dired)
(require 'init-yas)

(provide 'init)
;;; init.el ends here
