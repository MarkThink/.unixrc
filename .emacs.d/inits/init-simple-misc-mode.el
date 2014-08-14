;;------------------------------------------------------------------------------
;; Provide simple mode that do not need configurations.
;;------------------------------------------------------------------------------
(require-package 'coffee-mode)
(require 'coffee-mode)

(require-package 'jade-mode)
(require 'jade-mode)

(require-package 'go-mode)
(require 'go-mode)

(require-package 'php-mode)
(require 'php-mode)

(require-package 'markdown-mode)
(require 'markdown-mode)
(add-hook 'markdown-mode-hook (lambda () (run-hooks 'prog-mode-hook)))

(require-package 'yaml-mode)
(require 'yaml-mode)
(add-hook 'yaml-mode-hook (lambda () (run-hooks 'prog-mode-hook)))

(require-package 'thrift)
(require 'thrift)
(add-hook 'thrift-mode-hook (lambda () (run-hooks 'prog-mode-hook)))

(require-package 'dockerfile-mode)
(require 'dockerfile-mode)

;; Apply apache-mode to entire apache2 directory (including sub-directories).
(require-package 'apache-mode)
(require 'apache-mode)
(add-to-list 'auto-mode-alist '("/etc/apache2/.*" . apache-mode))
(add-hook 'apache-mode-hook (lambda () (run-hooks 'prog-mode-hook)))

;; Apply nginx-mode to entire nginx directory (including sub-directories).
(require-package 'nginx-mode)
(require 'nginx-mode)
(add-to-list 'auto-mode-alist '("/etc/nginx/.*" . nginx-mode))
(add-hook 'nginx-mode-hook (lambda () (run-hooks 'prog-mode-hook)))

;; Disable flycheck by default (annoying for some buffer, enable as needed).
(require-package 'flycheck)


;; Temporary & pending mode
;; (require 'flex-mode)
;; (require 'cool-mode)
;; (require 'bison-mode)


(provide 'init-simple-misc-mode)
