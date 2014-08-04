;;------------------------------------------------------------------------------
;; Provide yasnippet mode, a template system for Emacs. It allows you to type an
;; abbreviation and automatically expand it into function templates. It's elpa
;; managed mode.
;;   Use (yas-global-mode 1) to enable yasnippet globally; or use (yas-reload-all)
;;     to load snippets table, then add (yas-minor-mode) to major mode hook.
;;   Use yas-snippet-dirs to control which directories to load snippets table.
;;     Default directory is elpa's yasnippet installation directory, also
;;     snippets under ~/.emacs.d/snippets.
;;------------------------------------------------------------------------------
(require-package 'yasnippet)
(require 'yasnippet)


;; Load all snippets.
(yas-reload-all)
(setq yas-prompt-functions '(yas-ido-prompt yas-completing-prompt))

;; Expand yasnippet using C-o, it was bound to open-line by default in emacs.
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-o") 'yas-expand)


(provide 'init-yasnippet)