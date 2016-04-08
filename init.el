;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-elpa)
(require 'init-packages)
(require 'init-utils)

(require 'init-theme)
(require 'init-buffer)
(require 'init-window)
(require 'init-edit)
(require 'init-ivy)
(require 'init-evil)

(require 'init-dired)
(require 'init-org)
(require 'init-yas)
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)

;; Programming language supports
(require 'init-prog)
(require 'init-elisp)
(require 'init-perl)
(require 'init-rust)

;; Project related settings
(require 'init-project)

(require 'init-mac)

(provide 'init)
;;; init.el ends here
