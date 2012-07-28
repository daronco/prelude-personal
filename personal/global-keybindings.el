(global-set-key (kbd "C-c M-i") 'indent-region)
(global-set-key (kbd "C-c M-l") 'goto-line)

; Redefine C-<left> and C-<right> to be the same as M-<left> and M-<right>
; They are used by paredit: http://emacswiki.org/emacs/ParEdit
(global-set-key (kbd "C-<left>") 'backward-word)
(global-set-key (kbd "C-<right>") 'forward-word)
