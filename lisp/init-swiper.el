;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(require-package-load 'swiper)
(ivy-mode 1)
(setq-default ivy-use-virtual-buffers t)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'ivy-resume)

(provide 'init-swiper)

;;; init-swiper.el ends here
