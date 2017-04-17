(setq pfl-packages
      '(
        color-theme-sanityinc-tomorrow-night
        neotree
        ))

(when (not package-archive-contents) (package-refresh-contents))

(dolist (pkg pfl-packages)
  (when (and (not (package-installed-p pkg)) (assoc pkg package-archive-contents))
    (package-install pkg))
  )

(add-to-list 'auto-mode-alist '("\\.js?$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eco?$" . web-mode))

(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))
(setq web-mode-code-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq web-mode-attr-value-indent-offset 2)

(menu-bar-mode -1)
(load-theme 'zenburn)

(global-set-key [f8] 'neotree-toggle)
