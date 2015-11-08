;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'dash)


;;----------------------------------------------------------------------------
;; Delete the current file
;;----------------------------------------------------------------------------
(defun delete-this-file ()
  "Delete the file associated with the current buffer and close the buffer.
If buffer is not file, just close it, and push file content to `kill-ring'."
  (interactive)
  (progn
    (kill-new (buffer-string))
    (when (buffer-file-name)
      (progn (delete-file (buffer-file-name))
             (message "Deleted: 「%s」." (buffer-file-name))))
    (kill-buffer (current-buffer))))

(provide 'init-utils)

;;; init-utils.el ends here
