;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(defconst IS-MAC (eq system-type 'darwin))
(defconst IS-LINUX (eq system-type 'gnu/linux))

;; clipboard
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)
      ;; Use a shared clipboard
      select-enable-clipboard t
      select-enable-primary t)

(cond (IS-MAC
         (setq-default mac-option-modifier 'meta
		       mac-command-modifier 'control
		       mac-control-modifier 'super
		       insert-directory-program (executable-find "gls")))
      (IS-LINUX
       ;; native tooltips are ugly!
       (setq-default x-gtk-use-system-tooltips nil)))

(provide 'init-os)

;;; init-os.el ends here
