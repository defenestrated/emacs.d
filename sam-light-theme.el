(deftheme sam-light
  "Created 2021-10-07.")

(custom-theme-set-faces
 'sam-light
 '(cursor ((t (:inverse-video t :background "#FFFFFF"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#fe8b04"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "black" :inherit (alect-prompt)))))
 '(highlight ((t (:foreground "#000000" :background "#e9e9e9"))))
 '(region ((t (:extend t :background "grey90"))))
 '(shadow ((t (:foreground "#9f9f9f"))))
 '(secondary-selection ((t (:extend t :background "grey90"))))
 '(trailing-whitespace ((t (:background "#c64242"))))
 '(font-lock-builtin-face ((t (:weight bold :foreground "grey20"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "grey85" :inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#6e8090"))))
 '(font-lock-constant-face ((t (:weight bold :foreground "grey20"))))
 '(font-lock-doc-face ((t (:slant italic :foreground "#d0bf8f" :inherit (font-lock-comment-face)))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "grey20"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "grey20"))))
 '(font-lock-negation-char-face ((t (:foreground "#62b6ea"))))
 '(font-lock-preprocessor-face ((t (:foreground "#32cd32"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#c83029"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#e8e815"))))
 '(font-lock-string-face ((t (:foreground "grey40"))))
 '(font-lock-type-face ((t (:slant italic :foreground "grey20"))))
 '(font-lock-variable-name-face ((t (:foreground "grey20"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#ea3838"))))
 '(button ((t (:underline (:color nil :style nil) :inherit link))))
 '(link ((t (:foreground "#5983ff" :underline t))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#3390dc"))))
 '(fringe ((t (:foreground "#9f9f9f" :background "gray100"))))
 '(header-line ((t (:height 1.13 :box (:line-width (1 . 1) :color "#f6f0e1" :style nil) :foreground "#f6f0e1"))))
 '(tooltip ((t (:background "#bbbbbb" :foreground "#222222"))))
 '(mode-line ((t (:underline nil :overline "grey40" :box (:line-width (1 . 1) :color "black" :style unspecified) :inverse-video nil :foreground "black" :background "white"))))
 '(mode-line-buffer-id ((t (:inherit sml/filename :weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box (:line-width (1 . 1) :color nil :style released-button) :inherit (highlight)))))
 '(mode-line-inactive ((t (:underline nil :overline "grey40" :box (:line-width (1 . 1) :color "grey10" :style unspecified) :inverse-video nil :foreground "gray30" :background "grey90"))))
 '(isearch ((t (:weight normal :foreground "grey20" :background "grey90"))))
 '(isearch-fail ((t (:weight bold :foreground "red" :background "#a83838"))))
 '(lazy-highlight ((t (:foreground "grey20" :background "grey90"))))
 '(match ((t (:background "#00ffcc" :foreground "grey10" :box (:line-width (1 . 1) :color "black" :style released-button)))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(show-paren-match ((t (:background "orange" :foreground "black"))))
 '(show-paren-match-expression ((t (:inherit show-paren-match :background "orange" :foreground "black"))))
 '(auto-dim-other-buffers-face ((t (:background "grey90"))))
 '(company-preview ((t (:background "#55ccff" :foreground "black"))))
 '(company-preview-common ((t (:inherit company-tooltip-common-selection))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-common))))
 '(company-tooltip-common ((t (:foreground "black"))))
 '(company-tooltip ((t (:background "#e7de95" :foreground "black"))))
 '(sml/filename ((t (:inherit sml/global :foreground "black" :weight bold))))
 '(sml/line-number ((t (:inherit sml/modes :foreground "grey40" :weight bold))))
 '(dired-marked ((t (:inherit (warning)))))
 '(warning ((t (:foreground "#dd6600"))))
 '(default ((t (:family "Inconsolata" :foundry "nil" :width normal :height 140 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "grey20" :background "gray100" :stipple nil :extend nil :inherit nil))))
 '(xref-match ((t (:inherit (match))))))

(provide-theme 'sam-light)
