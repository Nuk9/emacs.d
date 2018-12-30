;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package ivy
  :ensure t
  :init
  (setq ivy-use-virtual-buffers t)
  (ivy-mode 1))

(use-package ivy-xref
  :ensure t
  :init (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))

(provide 'init-ivy)
;;; init-ivy.el ends here
