;;; package -- summary -*- lexical-binding: t; -*-
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package dired-k
  :ensure t
  :config
  (setq dired-k-style 'git)
  (add-hook 'dired-initial-position-hook 'dired-k)
  (add-hook 'dired-after-readin-hook #'dired-k-no-revert))

(setq-default dired-omit-verbose nil
              dired-omit-files-p t
              diredp-hide-details-initially-flag nil
              diredp-hide-details-propagate-flag nil
              dired-isearch-filenames t
              global-auto-revert-non-file-buffers t
              dired-dwim-target t
              dired-recursive-copies 'always
              dired-recursive-deletes 'always)

(defun dired-new-file (file)
  "Create a new FILE in dired mode."
  (interactive
   (list (read-file-name "Create file: " (dired-current-directory))))
  (write-region "" nil (expand-file-name file) t)
  (dired-add-file file)
  (revert-buffer)
  (dired-goto-file (expand-file-name file)))

(eval-after-load 'dired
  '(progn
     ;; prevent global keysettings being overwritten
     (defvar dired-mode-map)
     (define-key dired-mode-map (kbd "M-o") nil)
     (define-key dired-mode-map (kbd "M-i") nil)
     (define-key dired-mode-map (kbd "M-u") nil)
     (define-key dired-mode-map (kbd "C-t") nil)
     (define-key dired-mode-map (kbd "i") nil) ;; disable dired-maybe-insert-dir
     (define-key dired-mode-map (kbd "r") 'diredp-rename-this-file)
     (define-key dired-mode-map (kbd "s-o") 'dired-omit-mode)
     (define-key dired-mode-map (kbd "{") 'ergoemacs-open-in-external-app)
     (define-key dired-mode-map (kbd "}") 'ergoemacs-open-in-desktop)
     (define-key dired-mode-map (kbd "c") 'dired-new-file)
     (define-key dired-mode-map (kbd "y") 'dired-copy-filename-as-kill)
     (define-key dired-mode-map (kbd "<backspace>")
       (lookup-key dired-mode-map (kbd "^")))
     (setq-default dired-omit-files-p t)
     (add-hook 'dired-mode-hook 'auto-revert-mode)
     ))

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
                           (start-process "" nil "open" fPath))) myFileList))))))

;; show the file in a file manager
(defun ergoemacs-open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (w32-shell-execute "explore" (replace-regexp-in-string "/" "\\" default-directory t t)))
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux")
    (let ((process-connection-type nil)) (start-process "" nil "open" ".")))))

(provide 'init-dired)
;;; init-dired.el ends here
