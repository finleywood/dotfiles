(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.org/packages/"))
(package-initialize)

(tool-bar-mode -1)
(menu-bar-mode -1)
(setq ring-bell-function 'ignore)

(global-display-line-numbers-mode)
(electric-pair-mode t)

(set-face-attribute 'default nil
  :family "JetBrains Mono"
  :weight 'medium
  :height 150)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.1          ; Show completions quickly
        company-minimum-prefix-length 1  ; Start completing after 1 char
        company-selection-wrap-around t)
  (setq company-global-modes '(not shell-mode
                                   eshell-mode
                                   comint-mode
                                   term-mode
                                   vterm-mode))
  (global-company-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("fff0dc54ff5a194ba6593d1cce0fbb4fe8cf9da59fcef47f9e06dec6ef11b1fa"
     "6dcf1ca4c7432773084b9d52649ee5eb2c663131c4c06859f648dea98d9acb3e"
     "7e98dc1aa7f5db0557691da690c38d55e83ddd33c6d268205d66e430d57fb982"
     "1a721551e5867225da30177ecda385083732873269aa9f1e7188564c01210e1f"
     "df46394d55355a6786362d2709228ec092e2e0c6b13e0720344ad1878646b56c"
     "f76876670af99c2ca9eedecc9bb7559166726800fa9774d9e9630293354f25a4"
     "e604027b0160128a9bd633a63cd111227eea017cfbbe1ff5f3f7c83c9fb72bdf"
     "b61e6b8a20dde043f8bd49d8cfa126a86b7dcd85ce50ff71be41b78f38d6ae0b"
     "d2c76098def8b2b10b45d2092c86ca9c8b95d58fabbc8850d28899181d8f6581"
     "2896501d2809d956f0b4fa5442f416cb3e62c82da0ef7ccbef538c67872d1967"
     "4115a475d5a37007a5eb2da427e76e5b92f4102d90a4a7fdaf5410c2ca7afa36"
     "2c2fb80ac90e0ec6c0ba69bfb869280412e084f482a045dfe33f3fe92e9e19eb"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(company modus-themes tramp tree-sitter tree-sitter-langs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'tree-sitter)
(require 'tree-sitter-langs)

(global-tree-sitter-mode)
