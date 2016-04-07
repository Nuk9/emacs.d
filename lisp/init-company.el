;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'company)
(add-hook 'after-init-hook 'global-company-mode)
;;; manually manage backends myself
;; (setq-default company-backends '(company-keywords company-yasnippet))

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq-default company-tooltip-align-annotations t)
(setq-default company-idle-delay 0.2)

;; set company theme
(require-package-load 'color)
;;; Make company looks like auto-complete mode
(custom-set-faces
 '(company-tooltip                  ((t (:inherit nil :background "grey" :foreground "black"))))
 '(company-tooltip-selection        ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "white"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "black"))))
 '(company-preview-common ((t (:inherit nil :background "transparent" :foreground "darkred"))))
 '(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "black"))))
 )
(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  "Set BACKEND with yas."
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))
(setq-default company-backends (mapcar #'company-mode/backend-with-yas company-backends))

(provide 'init-company)

;;; init-company.el ends here
