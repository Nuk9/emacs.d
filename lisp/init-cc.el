;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(setq-default c-default-style "linux")
(setq-default c-basic-offset 4)

; style I want to use in c++ mode
(c-add-style "cpp-style"
	     '("stroustrup"
	       (indent-tabs-mode . nil)        ; use spaces rather than tabs
	       (c-basic-offset . 4)            ; indent by four spaces
	       (c-offsets-alist . ((inline-open . 0)  ; custom indentation rules
				   (brace-list-open . 0)
				   (statement-case-open . +)))))

(defun xu-c++-mode-hook ()
  "C++ mode hooks."
  (c-set-style "cpp-style"))
(add-hook 'c++-mode-hook 'xu-c++-mode-hook)

;; ccls configuration
(use-package ccls
  :ensure t
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

(provide 'init-cc)
;;; init-cc.el ends here
