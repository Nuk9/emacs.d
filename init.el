;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

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

(provide 'init)
;;; init.el ends here
