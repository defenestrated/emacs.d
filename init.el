;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/lib")
(add-to-list 'load-path "~/.emacs.d/custom")
(load "general.el")
(load "clojure-repls.el")
(load "clojure.el")
(load "paredit-conf.el")
;; (load "prodigy.el")
(load "web.el")
(load "bindings.el")
(load "highlight.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.01)
 '(compilation-scroll-output t)
 '(custom-safe-themes
   (quote
    ("e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(electric-pair-mode t)
 '(initial-major-mode (quote text-mode))
 '(initial-scratch-message "

")
 '(markdown-preview-auto-open (quote file))
 '(ns-antialias-text t)
 '(package-selected-packages
   (quote
    (php-mode rainbow-delimiters zenburn-theme yaml-mode win-switch websocket web-server web-mode use-package undo-tree smex smartparens smart-mode-line projectile prodigy processing-snippets processing-mode popwin pallet nyan-mode markdown-preview-eww markdown-mode+ magit isearch+ ido-vertical-mode ido-ubiquitous idle-highlight-mode htmlize highlight flymake-jshint flymake-cursor flymake flycheck-cask flx-ido find-file-in-project expand-region exec-path-from-shell drag-stuff company clojure-mode-extra-font-locking clj-refactor arduino-mode alect-themes adaptive-wrap)))
 '(processing-location "/usr/local/bin/processing-java")
 '(processing-sketchbook-dir "~/code/Processing")
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Inconsolata")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
