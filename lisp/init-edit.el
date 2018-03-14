;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

(setq-default indicate-buffer-boundaries
              '((up . nil) (down . nil) (t . left)))

;; (setq-default cursor-type 'bar)
(setq-default column-number-mode t)

(blink-cursor-mode 0)
(delete-selection-mode 1)
(menu-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

(defun rename-current-file-and-buffer ()
  "Rename the current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))

(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<f2>") 'rename-current-file-and-buffer)
(global-set-key (kbd "<f3>") 'save-buffer)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
;; Rebind M-w because default binding(kill-ring-save) has visual feedback which is not useful
(global-set-key (kbd "M-w") 'copy-region-as-kill)
(global-set-key (kbd "M-k") 'mark-word)
(global-set-key (kbd "C-:") 'comment-dwim)
(global-set-key (kbd "<f5>") '(lambda ()(interactive) (revert-buffer t t)))

(defun kill-whole-line-or-region ()
  "Kill region if active only, otherwise kill current line."
  (interactive)
  (if (region-active-p)
      (call-interactively 'kill-region)
    (call-interactively 'kill-whole-line)))
(global-set-key (kbd "C-w") 'kill-whole-line-or-region)

(defadvice find-file (after find-file-sudo activate)
  "Find file as root if necessary."
  (unless (and buffer-file-name
               (file-writable-p buffer-file-name))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(provide 'init-edit)

;;; init-edit.el ends here
