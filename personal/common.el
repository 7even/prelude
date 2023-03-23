;; remap cmd to super and option to meta
;; (because emacs-mac swaps them)
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

;; tell ace-window to dispatch even with 1 or 2 windows
(setq aw-dispatch-always 't)
;; and add some bindings for quick switching between windows
(global-set-key (kbd "s-1") (kbd "s-w 1"))
(global-set-key (kbd "s-2") (kbd "s-w 2"))
(global-set-key (kbd "s-3") (kbd "s-w 3"))
(global-set-key (kbd "s-4") (kbd "s-w 4"))
(global-set-key (kbd "s-5") (kbd "s-w 5"))
(global-set-key (kbd "s-6") (kbd "s-w 6"))
(global-set-key (kbd "s-7") (kbd "s-w 7"))
(global-set-key (kbd "s-8") (kbd "s-w 8"))
(global-set-key (kbd "s-9") (kbd "s-w 9"))

;; set the cursor to a blinking bar
(setq-default cursor-type (quote bar))
(blink-cursor-mode)
(setq blink-cursor-blinks 0)

;; bind s-d to avy command
(global-set-key (kbd "s-d") 'avy-goto-word-1)
