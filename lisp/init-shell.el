;;; package -- summary
;;; Shell toggle
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Code:

(require 'repl-toggle)

(add-hook 'comint-mode-hook
          (function (lambda ()
                      (local-set-key (kbd "C-l") 'comint-clear-buffer))))

(defun set-no-process-query-on-exit ()
  "When exit the term mode, do not send confirmation."
  (let ((proc (get-buffer-process (current-buffer))))
        (when (processp proc)
          (set-process-query-on-exit-flag proc nil))))
(add-hook 'term-exec-hook 'set-no-process-query-on-exit)

(global-set-key (kbd "<f4>") 'repl-toggle)

(provide 'init-shell)
;;; init-shell.el ends here
