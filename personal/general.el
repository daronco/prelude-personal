; Disabled guru-mode
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

; Disable line wrapping
(setq-default truncate-lines t)

; Indentation
(setq-default tab-width 2)              ; 2-space indent as default
(add-hook 'python-mode-hook             ; 2-space indent in python
          '(lambda ()
             (setq python-indent 2)))
(setq js-indent-level 2)                ; 2-space indent for javascript
