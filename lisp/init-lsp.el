;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Code:

(use-package lsp-mode
  :ensure t
  :commands lsp-mode
  :config
  (require 'lsp-clients)
  (setq lsp-inhibit-message t))

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-enable nil
        lsp-ui-imenu-enable nil))

(use-package company-lsp
  :ensure t
  :commands company-lsp)

;; C/C++
;; (use-package ccls
;;   :ensure t
;;   :hook ((c-mode c++-mode objc-mode) .
;;          (lambda () (require 'ccls) (lsp))))

;; Python
(use-package lsp-mode
  :hook (python-mode) . (lambda () (lsp) ))

(provide 'init-lsp)
;;; init-lsp.el ends here

