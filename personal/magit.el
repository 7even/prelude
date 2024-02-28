;; store transient values in a version controlled file
;; (note: it can't have an .el extension, otherwise prelude will try to load it)
(setq transient-values-file
      (locate-user-emacs-file "personal/transient-values"))

;; remap standard magit suffixes working with pushremote to keys
;; used to open their corresponding popups, so for example pushing
;; to pushremote is bound to "P P" instead of "P p"
(with-eval-after-load 'magit
  (transient-append-suffix 'magit-fetch "p" '("f" magit-fetch-from-pushremote))
  (transient-remove-suffix 'magit-fetch "p")

  (transient-append-suffix 'magit-pull "p" '("F" magit-pull-from-pushremote))
  (transient-remove-suffix 'magit-pull "p")

  (transient-append-suffix 'magit-rebase "e" '("r" magit-rebase-branch))
  (transient-remove-suffix 'magit-rebase "e")

  (transient-append-suffix 'magit-push "p" '("P" magit-push-current-to-pushremote))
  (transient-remove-suffix 'magit-push "p"))
