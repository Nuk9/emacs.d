;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(setq-default inhibit-startup-message t)
(global-visual-line-mode t)
(menu-bar-mode nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default ring-bell-function 'ignore)

(require-package 'all-the-icons)
(require-package 'doom-modeline)
(doom-modeline-init)

(defun xzhao/set-frame-theme (frame)
  "Set FRAME theme."
  (load-theme 'doom-one t))

(defun xzhao/set-frame-font (frame)
  "Set font of newly created FRAME."
  (if (eq system-type 'darwin)
    (if (display-graphic-p)
	(set-frame-font "Consolas 13" nil frame))
  (if (display-graphic-p)
      (set-frame-font "Monospace 11" nil frame)))
 (dolist (charset '(kana han symbol cjk-misc bopomofo))
  (if (display-graphic-p)
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Noto Sans CJK SC Regular" :size 13)))))

(xzhao/set-frame-font t)
(xzhao/set-frame-theme t)
;; set font and theme in emacsclient frame
(defadvice server-create-window-system-frame
    (after set-window-system-frame-colours ())
  "Setup frame font and theme in Emacs Server."
  (xzhao/set-frame-font t)
  (xzhao/set-frame-theme t))
(ad-activate 'server-create-window-system-frame)

;; Test display of CJK fonts
;; いろはにほへとちにぬるを
;; 花朵艳丽终将散落，谁人世间能长久好
;; 微风送客软语伴茶

(provide 'init-theme)

;;; init-theme.el ends here
