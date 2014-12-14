; Moving the cursor automatically between a pair of brackets when keying in them.

; Unset the electric keys in cc-mode
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (local-unset-key "\)")
	    (local-unset-key "\}")
	    (local-unset-key "\>")))

(defun my-insert-bracket-general (lbrackets rbracket)
  (insert rbracket)
  (when (memq (char-before (1- (point))) lbrackets)
    (backward-char))
  ;(if (eq (char-before (1- (point))) lbrackets)
  ;  (backward-char))
)

(defun my-insert-paren ()
  (interactive) (my-insert-bracket-general '(?\() ?\)))
(defun my-insert-brace ()
  (interactive) (my-insert-bracket-general '(?{) ?}))
(defun my-insert-bracket ()
  (interactive) (my-insert-bracket-general '(?\[) ?\]))
(defun my-insert-dquote ()
  (interactive) (my-insert-bracket-general '(?\") ?\"))
(defun my-insert-dollar ()
  (interactive) (my-insert-bracket-general '(?\$) ?\$))

(global-set-key "\)" 'my-insert-paren)
(global-set-key "}"  'my-insert-brace)
(global-set-key "\]" 'my-insert-bracket)
(global-set-key "\"" 'my-insert-dquote)
(global-set-key "\$" 'my-insert-dollar)

(add-hook 'latex-mode-common-hook
	  '(lambda ()
           (global-set-key "$" 'my-insert-dollar)))
