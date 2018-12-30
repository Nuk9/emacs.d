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
  :after lsp-mode
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-enable nil
        lsp-ui-imenu-enable nil))

(use-package company-lsp
  :ensure t
  :commands company-lsp)

(provide 'init-lsp)
;;; init-lsp.el ends here

