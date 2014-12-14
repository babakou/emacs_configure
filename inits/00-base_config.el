(setq visible-bell t)

; Making the toolbar and the menubar invisible.
(tool-bar-mode -1)
(menu-bar-mode -1)

; Making the window frame transparent.
;(add-to-list 'default-frame-alist '(alpha . 85))

; Preventing to create backup files.
(setq make-backup-files nil)

;start on home directory
(cd "~")

; Showing line numbers
(global-linum-mode t)

; Making the correspondent parenthesis highlighted
(show-paren-mode t)

; Setting the default coding system as utf-8
(prefer-coding-system 'utf-8-unix)
(set-file-name-coding-system 'japanese-shift-jis)
(set-keyboard-coding-system 'japanese-shift-jis)
(set-terminal-coding-system 'japanese-shift-jis)
(setq default-input-method "W32-IME")
(w32-ime-initialize)

; Turning off wrapping a line
(set-default 'truncate-lines t)
(setq truncate-partial-width-windows nil)

; Cygwin mount
(require 'cygwin-mount)
(cygwin-mount-activate)
