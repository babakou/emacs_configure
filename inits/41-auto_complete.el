; Configuration of auto-complete-mode.

; Setting ac-dictionary-directories.
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete-1.3.1/dict")

(global-auto-complete-mode t)
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)
(setq ac-auto-start 3)

(add-hook 'c-mode (lambda () (add-to-list 'ac-sources 'ac-source-semantic 'ac-source-gtags)))
(add-hook 'c++-mode (lambda () (add-to-list 'ac-sources 'ac-source-semantic 'ac-source-gtags)))
