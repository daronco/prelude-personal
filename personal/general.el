; TODO: shortcuts for regex search

; Disabled guru-mode
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

; Disable line wrapping
(setq-default truncate-lines t)

; Indentation
(setq-default tab-width 2)              ; 2-space indent as default
(setq ruby-indent-level 2)              ; 2-space in ruby
(add-hook 'python-mode-hook             ; 2-space indent in python
          '(lambda ()
             (setq python-indent 2)))
(setq js-indent-level 2)                ; 2-space indent for javascript
(setq css-indent-offset 2)              ; 2-space in css/scss

; Always show whitespaces
(global-whitespace-mode 1) ; TODO: it's working but whitespaces aren't being shown

; Default line-length to 100 chars
(setq whitespace-line-column 100)

; Turn xclip on (requires system package xclip installed!)
(if (boundp 'xclip-mode)
    (xclip-mode 1))

; Remove the hook that enables abbrev-mode in text files
; Was causing an annoying error that removed words after pressing space
; with the message:
; "Symbol's function definition is void: snippet-insert"
(remove-hook 'text-mode-hook 'abbrev-mode)

; Scroll half page on page-up and page-down
; From: http://www.emacswiki.org/emacs/HalfScrolling
(defun window-half-height ()
  (max 1 (/ (1- (window-height (selected-window))) 2)))
(defun scroll-up-half ()
  (interactive)
  (scroll-up (window-half-height)))
(defun scroll-down-half ()
  (interactive)
  (scroll-down (window-half-height)))
(global-set-key [next] 'scroll-up-half)
(global-set-key [prior] 'scroll-down-half)

; Scroll when near the bottom/top of screen
(setq scroll-margin 7)

; Do NOT compile scss on save >.<
(setq scss-compile-at-save nil)

; TODO: markdown mode sucks right now, ctrl+arrows is mapped to other things
(setq auto-mode-alist (cons '("\\.md$" . text-mode) auto-mode-alist))
; Keybidings define in markdown-mode are
; causing page down and page up to call these bindings and then
; print ~6 and ~5 in the text.
; TODO: these are not working :(
;; (global-unset-key (kbd "M-[")) ; 'markdown-beginning-of-block
;; (global-unset-key (kbd "M-]")) ; 'markdown-end-of-block
;; (define-key (current-global-map) (kbd "M-[") nil)
;; (define-key (current-global-map) (kbd "M-]") nil)
