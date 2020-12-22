;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

;; (use-package elpy
;;   :ensure t
;;   :init (elpy-enable))
(use-package company-jedi
  :ensure t
  :init (add-hook 'elpy-mode-hook '(lambda ()
                             (add-to-list 'company-backends 'company-jedi))))

(require 'python)
(setq python-shell-interpreter "python3")
(setq doom-modeline-python-executable "python3")
(setq-default jedi:server-command 
              '("/Users/xzhao9/homebrew/bin/python3"
                "/Users/xzhao9/.emacs.d/elpa/jedi-core-20191011.1750/jediepcserver.py"))


(provide 'init-python)

;;; init-python.el ends here

