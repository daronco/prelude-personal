; Customized themes

; Customize zenburn
(let ((class '((class color) (min-colors 89)))
      (zenburn-fg "#dcdccc")
      (zenburn-bg-1 "#101010")
      (zenburn-bg-05 "#161616")
      (zenburn-bg "#1b1b1b")
      (zenburn-bg+05 "#232323")
      (zenburn-bg+1 "#3f3f3f")
      (zenburn-error "#800080")
      (zenburn-yellow "#d4ef59")
      )
  (custom-theme-set-faces
   'zenburn
   `(default ((,class (:background ,zenburn-bg))))
   `(highlight ((,class (:background ,zenburn-bg-05))))
   `(mode-line-inactive ((,class (:background ,zenburn-bg-05))))
   `(whitespace-space ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+05)))) ; normal spaces
   `(whitespace-hspace ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+05))))
   `(whitespace-tab ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+05)))) ; normal tabs
   `(whitespace-newline ((,class (:foreground ,zenburn-bg+05))))
   `(whitespace-trailing ((,class (:background ,zenburn-error))))
   `(whitespace-line ((,class (:background ,zenburn-bg :foreground ,zenburn-yellow)))) ; long lines
   `(region ((,class (:background ,zenburn-bg-1))))
   )
  )
