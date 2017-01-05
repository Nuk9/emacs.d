;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(evil-leader/set-leader "<SPC>")

(deffun create-directory dir
  "Create parent directory if not exists while visiting file."
  (interactive)
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir)))))


(evil-leader/set-key
  "e" 'find-file
  ;; "c" '
  ;; "+" '
  "b" 'switch-to-buffer
  "k" 'kill-this-buffer
  "p" 'find-file-in-project
  "x" 'execute-extended-command
  "3" '(lambda () (interactive)(split-window-right) (other-window 1) (dired-jump) (revert-buffer))
  "j" '(lambda () (interactive) (dired-jump) (revert-buffer))
  "u" 'delete-other-windows
  "o" 'other-window
  "0" 'delete-window
  "C-e" 'eval-last-sexp
  "C-/" 'undo-tree-redo
  "<f12>" 'magit-status)

(setq-default evil-leader/no-prefix-mode-rx
	      '("magit-*-mode"))
(global-evil-leader-mode)

(evil-mode 1)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(setq-default key-chord-two-keys-delay 0.1)
(key-chord-mode 1)

(provide 'init-evil)

;;; init-evil.el ends here
