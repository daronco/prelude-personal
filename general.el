; Disabled guru-mode
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

; Disable line wrapping
(setq-default truncate-lines t)
