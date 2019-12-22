;;;; repl-toggle.el --- Toggle to and from the *Toggle* buffer
;;;
;;; Copyright (C) 2020, Xu Zhao (i@xuzhao.net)
;;;
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Version: 0.1.0
;;;
;;; This file is NOT part of GNU Emacs.
;;; You may however redistribute it and/or modify it under the terms of the GNU
;;; General Public License as published by the Free Software Foundation; either
;;; version 2, or (at your option) any later version.
;;;
;;; The file is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; Commentary:
;;; ----------------------------------------------------------------------
;;; Description:
;;;
;;; Provides the command repl-toggle which toggles between the
;;; specified repl and whatever buffer you are editing.
;;;
;;; This is done in an "intelligent" way.  Features are:
;;; o Starts a specified process if none is existent.
;;; o Minimum distortion of your window configuration.
;;; o When done in the shell-buffer you are returned to the same window
;;;   configuration you had before you toggled to the shell.
;;;
;;; This file has been tested under Emacs 26.3.
;;;
;;; This file can be obtained from http://github.com/xuzhao9/repl-toggle

;;; Changelog
;;
;; Version 0.1.0 (Dec. 21, 2019)
;; - Initial commit. Only default Emacs shell (`shell`) is supported.

;;; Code:
(defgroup repl-toggle nil
  "Toggle to and from the specified repl."
  :group 'shell)

(defvar repl-toggle-repl-buffer nil
  "The *Toggle* buffer. Nil if it is not set or is already killed.")

;;;###autoload
(defun repl-toggle ()
  "Toggle between the repl buffer and whatever buffer you are editting.
Then feed the PRELUDE command into the buffer."
  (interactive)
  ;;; TODO
  ;;; 1. If repl-toggle-repl-buffer is bounded and live and hided:
  ;;;    Split current window vertically and switch to it (may fail because current window is small)
  ;;; 2. If repl-toggle-repl-buffer is bounded and live and visible and is current window:
  ;;;    Delete the current window
  ;;; 3. If repl-toggle-repl-buffer is bounded and live and visible and is not current window:
  ;;;    Switch to the repl buffer window
  ;;; 4. Otherwise, create the repl-toggle-repl-buffer, then
  ;;;    Split current window vertically and switch to it (may fail because current window is small)
  (cond
   ((eq nil repl-toggle-repl-buffer) (repl-toggle-show-toggle-buffer))
   ;; Current buffer is *Toggle*: close the window
   ((eq (current-buffer) repl-toggle-repl-buffer) (repl-toggle-buffer-return-from-repl))
   ;; Current buffer is not *Toggle* but *Toggle* is a live and visible buffer: switch to it
   ((not (eq (get-buffer-window repl-toggle-repl-buffer) nil))
    (select-window (get-buffer-window repl-toggle-repl-buffer)))
   ;; *Toggle* exists but not visible: create a window and switch to it.
   ((and (not (eq repl-toggle-repl-buffer nil)) (buffer-live-p repl-toggle-repl-buffer))
    (repl-toggle-split-vertically-and-goto-buffer repl-toggle-repl-buffer))
   ;; Default: Either *Toggle* is killed or not visible: create a window and switch to it
   ;; Note that this may not be successful, because the current window may be too small.
   (t (repl-toggle-show-toggle-buffer))))

;;; ======================================================================
;;; Internal functions and declarations
(defun repl-toggle-show-toggle-buffer()
  "Show the *Toggle* buffer. Create if needed."
  (let ((toggle-buffer (repl-toggle-create-toggle-buffer 'ansi-term)))
    (repl-toggle-split-vertically-and-goto-buffer toggle-buffer)))

(defun repl-toggle-create-toggle-buffer (func)
  "Create a *Toggle* buffer if not exist using FUNC.
Then return either the newly-created buffer, or an existing *Toggle* buffer."
  (setq repl-toggle-repl-buffer (funcall func "/bin/zsh" "Toggle"))
  (previous-buffer)
  repl-toggle-repl-buffer)

(defun repl-toggle-buffer-return-from-repl ()
  "Restore the window configuration used before switching to the repl buffer."
  ;;;; Now, the current window is the repl buffer.
  (if (one-window-p)
  ;;;; If the current window is the sole buffer, switch to the previous buffer.
      (previous-buffer)
  ;;;; Otherwise, simply delete the current window
  (delete-window)))

(defun repl-toggle-split-vertically-and-goto-buffer (buffer)
  "Split window vertically and goto the repl BUFFER."
  (split-window-below 30)
  (other-window 1)
  (switch-to-buffer buffer)
  (setq-default comint-process-echoes t)
  (goto-char (point-max)))

(provide 'repl-toggle)
;;; repl-toggle.el ends here

