;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

(setq-default indicate-buffer-boundaries
              '((up . nil) (down . nil) (t . left)))

(setq-default cursor-type 'bar)
(blink-cursor-mode 0)

(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<f2>") 'rename-this-file-and-buffer)
(global-set-key (kbd "<f3>") 'save-buffer)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

(defun xah-delete-current-file ()
  "Delete the file associated with the current buffer and close the buffer.
Also push file content to `kill-ring'.
If buffer is not file, just close it, and push file content to `kill-ring'.

URL `http://ergoemacs.org/emacs/elisp_delete-current-file.html'
Version 2015-08-10"
  (interactive)
  (progn
    (kill-new (buffer-string))
    (when (buffer-file-name)
      (progn (delete-file (buffer-file-name))
             (message "Deleted: 「%s」." (buffer-file-name))))
    (kill-buffer (current-buffer))))

(provide 'init-edit)

;;; init-edit.el ends here


