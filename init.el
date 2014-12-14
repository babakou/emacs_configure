(let ((default-directory (expand-file-name "~/.emacs.d/")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)

; Load configration files in ~/.emacs.d/inits/
(init-loader-load "~/.emacs.d/inits")

; If you omit arguments, then "init-loader-directory" is used.
(init-loader-load)
