;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(setq-default python-shell-interpreter "python3")
(setq-default doom-modeline-python-executable "python3")

(use-package lsp-mode
  :hook (python-mode) . (lambda () (lsp) ))

(provide 'init-python)

;;; init-python.el ends here

