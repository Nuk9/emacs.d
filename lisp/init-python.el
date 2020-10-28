;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package elpy
  :ensure t
  :init (elpy-enable))

(require 'python)
(require 'doom-modeline)
(setq python-shell-interpreter "python3")
(setq doom-modeline-python-executable "python3")

(provide 'init-python)

;;; init-python.el ends here

