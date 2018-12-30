;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Code:

(use-package lsp-mode
  :ensure t
  :commands lsp
  :config
  (require 'lsp-clients))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config
  (lsp-ui-sideline-enable -1)
  (lsp-ui-imenu-enable -1))

(use-package company-lsp
  :ensure t
  :commands company-lsp)

(provide 'init-lsp)
;;; init-lsp.el ends here

