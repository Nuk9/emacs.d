;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(use-package rust-mode
  :ensure t)
(use-package racer
  :ensure t)
(use-package company-racer
  :ensure t)
(use-package flycheck-rust
  :ensure t
  :init (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

(setq-default rust-indent-offset 4)
(exec-path-from-shell-copy-env "RUST_SRC_PATH")

;; company
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook
	  (lambda ()
	    (defvar company-backends)
	    (set (make-local-variable 'company-backends)
		 (add-to-list 'company-backends 'company-racer))))

(provide 'init-rust)

;;; init-rust.el ends here
