;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(defun company-yasnippet-or-completion ()
  "Solve company yasnippet conflicts."
  (interactive)
  (let ((yas-fallback-behavior
         (apply 'company-complete-common nil)))
    (yas-expand)))

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  "Set BACKEND with yas."
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(use-package company
  :after yasnippet
  :commands (company-mode global-company-mode company-complete
                          company-complete-common company-manual-begin company-grab-line)
  :hook ((company-mode) . (lambda ()
                            (substitute-key-definition
                             'company-complete-common
                             'company-yasnippet-or-completion
                             company-active-map)))
  :config
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends)
        company-tooltip-align-annotations t
        company-idle-delay 0.2
        company-minimum-prefix-length 2)
  :ensure t)

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)

(provide 'init-company)

;;; init-company.el ends here
