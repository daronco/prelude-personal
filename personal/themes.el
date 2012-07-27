; Customized themes

; Customize zenburn
(let ((class '((class color) (min-colors 89)))
      (zenburn-bg-1 "#161616")
      (zenburn-bg-05 "#1c1c1c")
      (zenburn-bg "#262626")
      (zenburn-bg+1 "#4f4f4f")
      )
  (custom-theme-set-faces
   'zenburn
   `(default ((,class (:background ,zenburn-bg))))
   `(highlight ((,class (:background ,zenburn-bg-05))))
   `(mode-line-inactive ((,class (:background ,zenburn-bg-05))))
   `(whitespace-line ((,class (:background ,zenburn-bg-05))))
   `(whitespace-space ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
   `(whitespace-hspace ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
   `(whitespace-tab ((,class (:background ,zenburn-bg))))
   `(whitespace-newline ((,class (:foreground ,zenburn-bg+1))))
   `(whitespace-trailing ((,class (:background ,zenburn-bg))))
   `(whitespace-line ((,class (:background ,zenburn-bg-05))))
   `(region ((,class (:background ,zenburn-bg-1))))
   )
  )
