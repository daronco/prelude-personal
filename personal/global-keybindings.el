(global-set-key (kbd "C-c M-i") 'indent-region)
(global-set-key (kbd "C-c M-l") 'goto-line)

;; Redefine C-<left> and C-<right> to be the same as M-<left> and M-<right>
;; They are used by paredit: http://emacswiki.org/emacs/ParEdit
(global-set-key (kbd "C-<left>") 'backward-word)
(global-set-key (kbd "C-<right>") 'forward-word)

;; Rspec
(global-set-key (kbd "C-c M-f") 'rspec-verify)         ; entire file
(global-set-key (kbd "C-c M-s") 'rspec-verify-single)  ; current spec
(global-set-key (kbd "C-c M-a") 'rspec-verify-all)     ; everything
(global-set-key (kbd "C-c M-t") 'rspec-toggle-spec-and-target)

;;; multiple-cursors
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; (global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this-dwin)
