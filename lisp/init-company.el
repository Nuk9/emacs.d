;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(require 'init-elpa)
(require-package-load 'company)
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq-default company-tooltip-align-annotations t
              company-idle-delay 0.2
              company-minimum-prefix-length 3) ;; disable company completion with first char
;; set company theme
(require-package-load 'color)
;; set lsp backend
(require-package-load 'company-lsp)
(push 'company-lsp company-backends)

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  "Set BACKEND with yas."
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))
(setq-default company-backends (mapcar #'company-mode/backend-with-yas company-backends))

(defun company-yasnippet-or-completion ()
  "Solve company yasnippet conflicts."
  (interactive)
  (let ((yas-fallback-behavior
         (apply 'company-complete-common nil)))
    (yas-expand)))

(add-hook 'company-mode-hook
          (lambda ()
            (substitute-key-definition
             'company-complete-common
             'company-yasnippet-or-completion
             company-active-map)))

(provide 'init-company)

;;; init-company.el ends here
