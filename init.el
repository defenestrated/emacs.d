;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;(debug-on-entry 'package-initialize)

(require 'package)
(setq warning-suppress-log-types '((package reinitialization)))
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;; (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
;; (package-initialize)

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
 '(company-backends
   '(company-dabbrev-code company-jedi company-bbdb company-semantic company-cmake company-capf company-clang company-files
                          (company-dabbrev-code company-gtags company-etags company-keywords)
                          company-oddmuse))
 '(company-idle-delay 0.01)
 '(compilation-scroll-output t)
 '(custom-enabled-themes '(smart-mode-line-dark alect-dark))
 '(custom-safe-themes
   '("44513e4ee659934335b70e5711748b8a1cc95e2f60ba9488b4006b76805af155" "70b72c391d221c662b7030b7892a55cff6c0308fccae2907211fa40a717667d2" "c1b4ac3f152d5f695c846a7d1db6ebfa3070489d6ff450b7920cf67d0d9057c6" "14cc8657db1b4dcd81230caca824cbef75b8f2c2f38046ebc4468c398362dde6" "898ecb28e6d723ba2a314720463c7abb147db6f4f082512834463a7232aa6f95" "92fb10590ad59aa9234158a28af4db2cd12a32b13f6ce19eecced544d2266f58" "974faed90782ad7a46fb0846df21d0ee26b2e455a6a761ec5b9b63db3569be90" "f36d28852ca9dd0387e0e63421d4fb90665232cd7834a5b0bbeebe9843cf79c5" "ace97b2a9ac2bcde9497288d0cc6348c1ba4ca5ac26fae7f4cc6e831220ba5c8" "71166a6bd66ae3c2628f719c79e395e435a47f59c16f71b9dda7acf62ed02b2d" "cbeb26d24b785fbaf1cb91f2dd285beacaa44295b66b7439d2682fe1a8e31465" "7e537475dd6bd16664cd65f032268eae2f61964dc6ad2457e940af77d329e852" "55098b45daf320f9c6fa419bdaa90f30e7c433ec982179b2c9e66e446d9a1b9b" "4b8ef32584cabb5b574c9f8446266bc52f057771e7fd269660398932ef599f91" "570521e17b1a036fc49195c1399f68ba0aceef0ba0413cc91c72877b66e9ad42" "88ef7d8e237e4dba359bbfb2719aa1b182a2861614de7434aeddd97bdf1d5a2f" "7147e59957382e10db28ebc6beda2927061a3d4d557ae1f1f21cf3a9382b4970" "c19876353f2c981bb4b96401531241c4efcdc8d7c7e74888575c4e15ff2dc02e" "0546fada69f400c095ed626fe990c6816a5931a1fe9030f60863c8541604a113" "3ed3978a354df2916d45b50aae2aee79a5fcbfe25064ce3640492edf92cf4426" "9c70d8e42cf2ab3e2ca4655a9aff05b7a5ac3e6b1149f446c14a628a5203d5dd" "bf96b2b223507855d5960ac328bcab33588376636e73490f194046502dded71c" "bf43edc2d3f461896aca537012ee3c66ce9b15fdb0487153f6448a78d6904e27" "93401bd331272e4f5e658c01fe0d71fbe4a0493cae7853bebc75d47dc4f0875f" "8fd4205ce51f294186907f450b8d69c261ca12791cdd9e25705cd975c6bfd401" "17589a7c5d57e9a2048a92e6d0c5e5beec6ddf60f507aaec318880c30e6f064c" "440e53a857fe0e1f3bede784090de81319a018fa1faf2af752e54608b182afc8" "1b29c3bbde55b2392725b13c175abf3b37f90faf4552c1e8ac4835396de18add" "f4fa80336352fd30b4a9a5b0183d94200ccd99a05b2dc85c5118b1f5bc68ee7e" "d91839ffca829e65b2a787d937c6160d896fa228e3d7268f4a0cd38b708d5f9e" "f3b869c4bf0ac4e5e71d0af3aef9a1a4c4a5d1d4e514dcd4b6b3f423e523afd6" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "0eb9c29d95bcea3ef901911bac371db5cca754e2753db7ea02b78f50d9c45fda" "2c5d4fc90ac05d7138680e66035a87dd6bbe7d1320475c8de3c356175c2e6813" "a5615c78073bcd81c975c57ff47d99158a1bbfa506b27126a0b307d06afc08db" "4b18de4f51c6d574523039285692a43687425e255306e59ab2344ec3fed81179" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "8f5a7fd1eb4fb7726cdf5ab17867c0fbef6ee522116ff8a8caf1a98d63db4f4b" "53b49c946379b521ba8c4bdce290272b652c7a5397d0a5539e20386ad2b6df61" "1a3f58703b25e8bbc4ef7093befa6f1741da1aa2ed289e8bc0bda0a9e6066c7d" "91d5e3749429ba2ef49046d2a9018c167e9722a5c04a4c62a73dbd1ce154be3f" "29247611a95f0a657f469481a031ee76d23609296dce6f39ed7af13610ea5024" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "69402c4ee4d8c06b262377b9a90067d05111962101b5124b2f7eb5561d22aaf3" "e5fc384448943a5502ed71a6218006896feff09696900b15ca9d0eb8325591c1" "e29799470afff92adb021d3007945f36e6fc9120dd67df623180b9695fc8b56b" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "032c94b10039fbce624d0ef87df1d1124c5ba1f03a5825def96f5b9ab13122f3" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default))
 '(delete-auto-save-files t)
 '(delete-by-moving-to-trash nil)
 '(delimit-columns-before "")
 '(electric-pair-mode t)
 '(fringe-mode 12 nil (fringe))
 '(initial-major-mode 'text-mode)
 '(initial-scratch-message "

")
 '(markdown-preview-auto-open 'file)
 '(ns-antialias-text t)
 '(package-selected-packages
   '(minimal-theme hideshow-org platformio-mode auto-dim-other-buffers pandoc-mode typo string-inflection company-jedi yasnippet-snippets no-littering cider company-tern jsx-mode emmet-mode typed-clojure-mode csv-mode multi-term prettier-js vmd-mode markdown-mode python-mode web-beautify ac-js2 ag js2-mode php-mode rainbow-delimiters zenburn-theme yaml-mode win-switch websocket web-server web-mode use-package undo-tree smex smart-mode-line smartparens projectile prodigy processing-snippets processing-mode popwin pallet nyan-mode markdown-preview-eww markdown-mode+ magit isearch+ ido-vertical-mode ido-ubiquitous idle-highlight-mode htmlize highlight flymake-gjshint flymake-cursor flymake flycheck-cask flx-ido find-file-in-project expand-region exec-path-from-shell drag-stuff company clojure-mode-extra-font-locking clj-refactor arduino-mode alect-themes adaptive-wrap))
 '(processing-location "/usr/local/bin/processing-java")
 '(processing-sketchbook-dir "~/code/Processing")
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(warning-suppress-log-types
   '(((package reinitialization))
     ((package reinitialization))
     ((package reinitialization))
     (comp)
     (comp)))
 '(warning-suppress-types
   '(((package reinitialization))
     ((package reinitialization))
     (comp)
     (comp)))
 '(winner-dont-bind-my-keys t)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "#6e8090"))))
 '(sml/modes ((t (:inherit sml/global :foreground "gray68")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-livedown"))
(require 'livedown)
(require 'smartparens-config)
(put 'narrow-to-region 'disabled nil)
