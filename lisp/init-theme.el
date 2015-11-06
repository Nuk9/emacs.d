;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(setq-default inhibit-startup-message t)

(load-theme 'sanityinc-solarized-light t)

(menu-bar-mode nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(if (display-graphic-p)
    (set-frame-font "Consolas 11" nil t))

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (if (display-graphic-p)
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Noto Sans S Chinese" :size 12))))

(provide 'init-theme)

;;; init-theme.el ends here
