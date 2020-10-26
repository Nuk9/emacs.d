;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'package)


(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(add-to-list 'package-archives `("melpa" . , "https://melpa.org/packages/"))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(setq package-enable-at-startup nil)
(package-initialize)

;;; Endless upgrade
(defun endless/upgrade ()
  "Upgrade all packages, no questions asked."
  (interactive)
  (let ((package-menu-async nil))
    (save-window-excursion
      (list-packages)
      (package-menu-mark-upgrades)
      (package-menu-execute 'no-query)
      (package-autoremove))))

(require-package 'use-package)
(require 'use-package)

(provide 'init-elpa)

;;; init-elpa.el ends here
