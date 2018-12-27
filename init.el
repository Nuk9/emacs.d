;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-core)

(require 'init-elpa)
(require 'init-packages)
(require 'init-utils)

(require 'init-theme)
(require 'init-buffer)
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

;; Project related settings
(require 'init-projectile)

(require 'init-os)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(package-selected-packages
   (quote
    (cmake-mode yasnippet swiper rainbow-delimiters racer magit lsp-ui key-chord flycheck-rust find-file-in-project exec-path-from-shell evil-leader doom-themes doom-modeline company-racer company-lsp ccls))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview-common ((t (:inherit default :foreground "darkred"))))
 '(company-tooltip ((t (:inherit nil :background "grey" :foreground "black"))))
 '(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "white"))))
 '(company-tooltip-selection ((t (:background "steelblue" :foreground "white")))))
