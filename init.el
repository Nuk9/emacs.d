;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-elpa)
(require 'init-utils)

(require 'init-theme)
(require 'init-buffer)
(require 'init-window)
(require 'init-edit)

(require 'init-wg)
(require 'init-recentf)
(require 'init-helm)
(require 'init-dired)
(require 'init-org)
(require 'init-yas)
(require 'init-ido)
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)

;; Support for programming languages
(require 'init-prog)
(require 'init-elisp)
(require 'init-rust)

(require 'init-mac)

(provide 'init)
;;; init.el ends here
