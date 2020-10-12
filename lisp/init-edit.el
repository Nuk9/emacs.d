;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(setq-default
 vc-follow-symlinks t
 ;; formatting
 delete-trailing-lines nil
 fill-column 80
 sentence-end-double-space nil
 word-wrap t
 ;; Scrolling
 hscroll-margin 2
 hscroll-step 1
 scroll-conservatively 1001
 scroll-margin 0
 scroll-preserve-screen-position t
 ;; Whitespace
 indent-tabs-mode nil
 require-final-newline t
 tab-always-indent t
 tab-width 4
 ;; Wrapping
 truncate-lines t
 truncate-partial-width-windows 50
 column-number-mode t
 ;; disable backup
 backup-inhibited t
 tab-width 4
 auto-save-default nil)

(blink-cursor-mode 0)
(delete-selection-mode t)
(global-linum-mode t)
(setq-default linum-format "%3d ")
(global-visual-line-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)


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

(global-set-key (kbd "C-?") 'undo-tree-redo)
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "M-k") 'mark-word)
(global-set-key (kbd "<f3>") 'nil)
(global-set-key (kbd "<f2>") 'nil)
(global-set-key (kbd "C-:") 'comment-dwim)
(global-set-key (kbd "M-:") 'nil)
(global-set-key (kbd "<f5>") '(lambda ()(interactive) (revert-buffer t t)))

;; (defadvice find-file (after find-file-sudo activate)
;;  "Find file as root if necessary."
;;  (unless (and buffer-file-name
;;               (file-writable-p buffer-file-name))
;;    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(provide 'init-edit)

;;; init-edit.el ends here
