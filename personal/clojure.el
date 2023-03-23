;; add and enable clj-refactor in clojure buffers
(prelude-require-package 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

;; use sane indentation for re-frame subscriptions, event handlers and effects
(eval-after-load 'clojure-mode
  '(define-clojure-indent
     (rf/reg-sub 1)
     (rf/reg-event-db 1)
     (rf/reg-event-fx 1)
     (rf/reg-fx 1)
     (rf/reg-cofx 1)))
