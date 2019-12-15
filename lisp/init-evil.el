;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(require 'init-elpa)
(require-package-load 'evil)
(require 'evil-states)
(require 'evil-search)
(require 'evil-leader)
(require 'ivy)
(use-package vi-tilde-fringe
  :ensure t)
(use-package ace-jump-mode
  :ensure t)
(global-vi-tilde-fringe-mode t)

;; evil-leader shortcuts
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-this-buffer
  "p" 'counsel-projectile-find-file
  "c" 'evil-ex-nohighlight
  "s" 'counsel-projectile-switch-project
  "x" 'execute-extended-command
  "i" 'package-install
  "3" '(lambda () (interactive)(split-window-right) (other-window 1) (dired-jump) (revert-buffer))
  "j" '(lambda () (interactive) (dired-jump) (revert-buffer))
  "u" 'delete-other-windows
  "o" 'other-window
  "q" 'keyboard-escape-quit
  "0" 'delete-window
  "C-e" 'eval-last-sexp
  "<f12>" 'magit-status)

;; evil custom commands
(evil-ex-define-cmd "sw[iper]" 'swiper)
(evil-ex-define-cmd "rg" 'counsel-projectile-rg)

(define-key evil-normal-state-map "gd" 'xref-find-definitions-other-window)
(define-key evil-normal-state-map "gb" 'pop-global-mark)
(define-key evil-normal-state-map "J" 'evil-ace-jump-word-mode)

(setq-default evil-leader/no-prefix-mode-rx
              '("magit-*-mode"))
(global-evil-leader-mode)
(evil-mode 1)
;; Use evil search instead of isearch
(evil-select-search-module 'evil-search-module 'evil-search)
;; Clear search highlights when entering the insert mode
(add-hook 'evil-insert-state-entry-hook 'evil-ex-nohighlight)

;; key-chords
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define minibuffer-local-map "jk" 'keyboard-escape-quit)
(key-chord-define ivy-minibuffer-map "jk" 'keyboard-escape-quit)
(setq-default key-chord-two-keys-delay 0.2)
(key-chord-mode 1)

(provide 'init-evil)

;;; init-evil.el ends here
