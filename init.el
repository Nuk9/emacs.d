;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)


;;; Code:

;; (package-initialize)

(defconst *is-a-mac* (eq system-type 'darwin))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-core)
(require 'init-elpa)
(require 'init-packages)
(require 'init-utils)

(require 'init-theme)
(require 'init-recentf)
(require 'init-window)
(require 'init-edit)
(require 'init-ivy)
(require 'init-evil)

(require 'init-dired)
(require 'init-org)
(require 'init-yas)
(require 'init-flycheck)
(require 'init-magit)

;; Programming language supports
(require 'init-txt)
(require 'init-lsp)
(require 'init-company)
(require 'init-elisp)
(require 'init-scheme)
(require 'init-cc)
(require 'init-python)
(require 'init-shell)
(require 'init-perl)
(require 'init-rust)
(require 'init-haskell)

;; Project related settings
(require 'init-projectile)

(require 'init-os)

(provide 'init)
;;; init.el ends here
