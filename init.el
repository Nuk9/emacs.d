;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; tricks to boost emacs startup
(defvar last-file-name-handler-alist file-name-handler-alist)
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6
      file-name-handler-alist nil)

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
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)

;; Programming language supports
(require 'init-prog)
(require 'init-lsp)
(require 'init-shell)
(require 'init-elisp)
(require 'init-perl)
(require 'init-rust)
(require 'init-python)
(require 'init-haskell)

;; Project settings
(require 'init-projectile)

(require 'init-os)

;; After startup, it is important you reset this to some reasonable default.
;; A large gc-cons-threshold will cause freezing and stuttering during long-term
;; interactive use. I find these are nice defaults:
(add-hook 'emacs-startup-hook
  (lambda () (setq gc-cons-threshold 16777216
                   gc-cons-percentage 0.1
                   file-name-handler-alist last-file-name-handler-alist)))

(provide 'init)
;;; init.el ends here
