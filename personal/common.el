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

;; kill current buffer on s-q and revert it on s-u
(global-set-key (kbd "s-q") 'kill-current-buffer)
(global-set-key (kbd "s-u") 'revert-buffer-quick)

;; disable whitespace-mode and flyspell
(setq prelude-whitespace nil)
(setq prelude-flyspell nil)

;; add some bindings for multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M->") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c C->") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-<") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/unmark-previous-like-this)
;; and set its config location in a version controlled directory
(setq mc/list-file (locate-user-emacs-file "personal/.mc-lists.el"))

;; use a smarter newline function by default
(global-set-key (kbd "C-m") 'comment-indent-new-line)
;; and add a binding to comment whole current line
(global-set-key (kbd "C-;") 'comment-line)

;; add shrink-whitespace along with some bindings
(prelude-require-package 'shrink-whitespace)
(global-set-key (kbd "M-\\") 'shrink-whitespace)
(global-set-key (kbd "C-M-\\") 'grow-whitespace-around)

;; prefer horizontal window splits
(setq split-height-threshold nil)
(setq split-width-threshold 200)
