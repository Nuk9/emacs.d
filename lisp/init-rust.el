;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(require-package-load 'rust-mode)
(setq-default rust-indent-offset 4)

(require-package-load 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "RUST_SRC_PATH")

;; company
(require-package-load 'racer)
(require-package-load 'company-racer)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook
	  (lambda ()
	    (defvar company-backends)
	    (set (make-local-variable 'company-backends)
		 (add-to-list 'company-backends 'company-racer))))

;; flycheck
(require-package-load 'flycheck-rust)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(provide 'init-rust)

;;; init-rust.el ends here
