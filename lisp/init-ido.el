;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(ido-mode t)
(ido-ubiquitous-mode t)

(setq-default ido-everywhere t)
(setq-default ido-enable-flex-matching t)
(setq-default ido-use-filename-at-point nil)
(setq-default ido-use-virtual-buffers t)

(provide 'init-ido)

;;; init-ido.el ends here
