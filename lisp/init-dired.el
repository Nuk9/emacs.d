;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'dired+)

(defun dired-new-file (file)
  "Create a new FILE in dired mode."
  (interactive
   (list (read-file-name "Create file: " (dired-current-directory))))
  (write-region "" nil (expand-file-name file) t)
  (dired-add-file file)
  (revert-buffer)
  (dired-goto-file (expand-file-name file)))

(eval-after-load 'dired+
  '(progn
     ;; prevent global keysettings being overwritten
     (define-key dired-mode-map (kbd "M-o") nil)
     (define-key dired-mode-map (kbd "M-i") nil)
     (define-key dired-mode-map (kbd "M-u") nil)
     (define-key dired-mode-map (kbd "C-t") nil)
     (define-key dired-mode-map (kbd "s-o") 'dired-omit-mode)
     (define-key dired-mode-map (kbd "{") 'ergoemacs-open-in-external-app)
     (define-key dired-mode-map (kbd "}") 'ergoemacs-open-in-desktop)
     (define-key dired-mode-map (kbd "<f2>") 'dired-rename-file)
     ;; (define-key dired-mode-map (kbd "c") 'dired-new-file)
     (define-key dired-mode-map (kbd "<backspace>")
       (lookup-key dired-mode-map (kbd "^")))
     ;; (setq-default dired-omit-files-p t)
     (setq dired-omit-files
           (concat dired-omit-files "\\|^\\..+$"))))

;; disable dired omit message
(setq-default dired-omit-verbose nil)
(setq-default dired-omit-files-p t)

;; dired-open-in-external-app functions
(defun ergoemacs-open-in-external-app ()
  "Open the current file or dired marked files in external app."
  (interactive)
  (let (doIt
        (myFileList
         (cond
          ((string-equal major-mode "dired-mode") (dired-get-marked-files))
          (t (list (buffer-file-name))))))
    (setq doIt (if (<= (length myFileList) 5)
                   t
                 (y-or-n-p? "Open more than 5 files?")))
    (when doIt
      (cond
       ((string-equal system-type "windows-nt")
        (mapc (lambda (fPath) (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" fPath t t))) myFileList))
       ((string-equal system-type "darwin")
        (mapc (lambda (fPath) (shell-command (format "open \"%s\"" fPath)))  myFileList))
       ((string-equal system-type "gnu/linux")
        (mapc (lambda (fPath) (let
                             ((process-connection-type nil))
                           (start-process "" nil "xdg-open" fPath))) myFileList))))))
;; show the file in a file manager
(defun ergoemacs-open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (w32-shell-execute "explore" (replace-regexp-in-string "/" "\\" default-directory t t)))
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux")
    (let ((process-connection-type nil)) (start-process "" nil "xdg-open" ".")))))


(setf dired-isearch-filenames t)     ; Dired mode search filename only
(setq dired-dwim-target t)
(setq dired-recursive-copies (quote always))
(setq dired-recursive-deletes (quote top))
(put 'dired-find-alternate-file 'disabled nil)

(provide 'init-dired)

;;; init-dired.el ends here
