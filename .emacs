; define color scheme.
(setq font-lock-mode-maximum-decoration t)
(require 'font-lock)
(setq font-lock-use-default-fonts nil)
(setq font-lock-use-default-colors nil)
(copy-face 'default 'font-lock-string-face)
(set-face-foreground 'font-lock-string-face "green")
(copy-face 'italic 'font-lock-comment-face)
(set-face-foreground 'font-lock-comment-face "yellow")
(copy-face 'bold 'font-lock-function-name-face)
(set-face-foreground 'font-lock-function-name-face "SteelBlue")
(copy-face 'default 'font-lock-keyword-face)
(set-face-foreground 'font-lock-keyword-face "SteelBlue")
(copy-face 'default 'font-lock-type-face)
(set-face-foreground 'font-lock-type-face "DarkOliveGreen")
(set-face-foreground 'bold-italic "Blue")

(setq default-frame-alist
      '(
; default geometry definitions	
	(width . 80) (height . 40)
	(cursor-color . "red")
	(cursor-type . line)
	(foreground-color . "wheat")
	(background-color . "dark slate gray")))

; misc settings
(custom-set-variables
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(fontset-default-styles (quote (bold demibold italic oblique bold-italic bold-oblique demibold-italic demibold-oblique)))
 '(frame-background-mode nil)
 '(global-font-lock-mode t nil (font-lock))
 '(pc-select-meta-moves-sexps t)
 '(pc-select-selection-keys-only t)
 '(pc-selection-mode t nil (pc-select))
 '(query-user-mail-address nil)
 '(toolbar-mail-reader (quote mutt))
 '(toolbar-news-reader (quote gnus))
 '(transient-mark-mode t)
 '(truncate-lines t))
(custom-set-faces)
(setq minibuffer-max-depth nil)
(setq-default truncate-lines t)
(setq scroll-step 1)

