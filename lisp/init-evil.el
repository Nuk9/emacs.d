;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-this-buffer
  "p" 'find-file-in-project
  "c" 'evil-ex-nohighlight
  "s" 'projectile-switch-project
  "P" 'projectile-find-file-in-known-projects
  "x" 'execute-extended-command
  "3" '(lambda () (interactive)(split-window-right) (other-window 1) (dired-jump) (revert-buffer))
  "j" '(lambda () (interactive) (dired-jump) (revert-buffer))
  "u" 'delete-other-windows
  "o" 'other-window
  "0" 'delete-window
  "C-e" 'eval-last-sexp
  "C-/" 'undo-tree-redo
  "<f12>" 'magit-status)

(define-key evil-normal-state-map "gd" 'xref-find-definitions-other-window)
(define-key evil-normal-state-map "gb" 'pop-global-mark)

(setq-default evil-leader/no-prefix-mode-rx
	      '("magit-*-mode"))
(global-evil-leader-mode)

(evil-mode 1)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(setq-default key-chord-two-keys-delay 0.2)
(key-chord-mode 1)

;; Use evil search instead of isearch
(evil-select-search-module 'evil-search-module 'evil-search)

(provide 'init-evil)

;;; init-evil.el ends here
