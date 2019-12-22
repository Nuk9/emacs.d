;;; package -- summary
;;; Shell toggle
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Code:

(require 'repl-toggle)

(add-hook 'comint-mode-hook
          (function (lambda ()
                      (local-set-key (kbd "C-l") 'comint-clear-buffer))))
(global-set-key (kbd "<f4>") 'repl-toggle)

(provide 'init-shell)
;;; init-shell.el ends here
