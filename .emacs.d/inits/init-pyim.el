;;------------------------------------------------------------------------------
;; Provide pyim, an elegant chinese input method:
;;   https://github.com/tumashu/pyim
;;
;; Common commands:
;;   M-x pyim-dicts-manager - Manage all dictionaries.
;;   M-x pyim-restart - Restart chinese pyim.
;;
;; Notes:
;; 1. Dictionary 'pyim-bigdict' is ~20M so it is ignored; to install:
;;    wget http://tumashu.github.io/pyim-bigdict/pyim-bigdict.pyim -P ~/.emacs.d/pyim/dicts
;; 2. Only enabled on Linux, use "C-;" to toggle input method.
;;------------------------------------------------------------------------------
(require-package 'pyim)
(require-package 'pyim-basedict)
(require 'pyim)
(require 'pyim-basedict)

(pyim-basedict-enable)
(setq default-input-method "pyim")

(global-set-key (kbd "C-;") 'toggle-input-method)

;; A list of all dictionries.
(setq pyim-dicts
      '((:name "pyim-bigdict"
         :file "~/.emacs.d/pyim/dicts/pyim-bigdict.pyim"
         :coding utf-8-unix
         :dict-type pinyin-dict)))

(provide 'init-pyim)
