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
                        (font-spec :family "Noto Sans CJK SC Regular" :size 13))))

;; Test display of CJK fonts
;; いろはにほへとちにぬるを
;; 花朵艳丽终将散落，谁人世间能长久好
;; にこにこに
;; 貴方のハートにニコニコに
;; 微风送客软语伴茶

(provide 'init-theme)

;;; init-theme.el ends here
