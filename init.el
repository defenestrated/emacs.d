;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;; (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(require 'no-littering)

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
 '(arduino-executable "arduino")
 '(arduino-mode-home "/Applications/Arduino.app/Contents/Java")
 '(auto-dim-other-buffers-mode t)
 '(column-number-mode t)
 '(company-idle-delay 0.01)
 '(compilation-scroll-output t)
 '(custom-safe-themes
   (quote
    ("e5fc384448943a5502ed71a6218006896feff09696900b15ca9d0eb8325591c1" "e29799470afff92adb021d3007945f36e6fc9120dd67df623180b9695fc8b56b" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "032c94b10039fbce624d0ef87df1d1124c5ba1f03a5825def96f5b9ab13122f3" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(delete-auto-save-files t)
 '(delete-by-moving-to-trash nil)
 '(delimit-columns-before "")
 '(electric-pair-mode t)
 '(fringe-mode 12 nil (fringe))
 '(initial-major-mode (quote text-mode))
 '(initial-scratch-message "

")
 '(markdown-preview-auto-open (quote file))
 '(ns-antialias-text t)
 '(package-selected-packages
   (quote
    (platformio-mode auto-dim-other-buffers pandoc-mode typo string-inflection company-jedi yasnippet-snippets no-littering cider company-tern jsx-mode emmet-mode typed-clojure-mode csv-mode multi-term prettier-js vmd-mode markdown-mode python-mode web-beautify ac-js2 ag js2-mode php-mode rainbow-delimiters zenburn-theme yaml-mode win-switch websocket web-server web-mode use-package undo-tree smex smart-mode-line smartparens projectile prodigy processing-snippets processing-mode popwin pallet nyan-mode markdown-preview-eww markdown-mode+ magit isearch+ ido-vertical-mode ido-ubiquitous idle-highlight-mode htmlize highlight flymake-gjshint flymake-cursor flymake flycheck-cask flx-ido find-file-in-project expand-region exec-path-from-shell drag-stuff company clojure-mode-extra-font-locking clj-refactor arduino-mode alect-themes adaptive-wrap)))
 '(processing-location "/usr/local/bin/processing-java")
 '(processing-sketchbook-dir "~/code/Processing")
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(winner-dont-bind-my-keys t)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#393c40" :foreground "#DCDCDC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Inconsolata"))))
 '(auto-dim-other-buffers-face ((t (:background "#494e52"))))
 '(company-preview ((t (:background "orchid3" :foreground "gray10"))))
 '(font-lock-comment-face ((t (:foreground "#6e8090"))))
 '(fringe ((t (:background "#393c40" :foreground "#9f9f9f")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-livedown"))
(require 'livedown)
(require 'smartparens-config)
(put 'narrow-to-region 'disabled nil)
