(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.org/packages/"))
(package-initialize)

(tool-bar-mode -1)
(menu-bar-mode -1)
(setq ring-bell-function 'ignore)
(electric-pair-mode t)

(setq-default tab-width 2)
(setq-default eglot-ignored-server-capabilities '(:documentFormattingProvider
                                                  :documentRangeFormattingProvider
																									:documentOnTypeFormattingProvider))

(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

(global-display-line-numbers-mode)

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
	 '("8363207a952efb78e917230f5a4d3326b2916c63237c1f61d7e5fe07def8d378"
		 "5a0ddbd75929d24f5ef34944d78789c6c3421aa943c15218bac791c199fc897d"
		 "51fa6edfd6c8a4defc2681e4c438caf24908854c12ea12a1fbfd4d055a9647a3"
		 "ca1b398ceb1b61709197478dc7f705b8337a0a9631e399948e643520c5557382"
		 "75eef60308d7328ed14fa27002e85de255c2342e73275173a14ed3aa1643d545"
		 "b11edd2e0f97a0a7d5e66a9b82091b44431401ac394478beb44389cf54e6db28"
		 "04aa1c3ccaee1cc2b93b246c6fbcd597f7e6832a97aaeac7e5891e6863236f9f"
		 "6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1"
		 "c8078cccd38e52c3f94822b0b2bbe83886dea993536acfde2db019f46a193503"
		 "3656585faa5bd9925c0ee134b5eecf6d6a45ee2a2e81e633fa7a9a0659fdc095"
		 "ba35218e2ee4e80235b226d72c94169195505fee0424cab82bb54f391884d469"
		 "ea650f6ba4839360a905e1857f8fcce823661ade6c8d23fcba67254abc0cba1b"
		 "c99e3f80bce3cc7a5bbd8804bcb98ac37034a825723468299d63acb8759cadd1"
		 "f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7"
		 "e1da45d87a83acb558e69b90015f0821679716be79ecb76d635aafdca8f6ebd4"
		 "e7b0f33dfdebf6e8950d75aa6400bb7f84832838ebc95a43c719f1ee86f75294"
		 "3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037"
		 "0d2c5679b6d087686dcfd4d7e57ed8e8aedcccc7f1a478cd69704c02e4ee36fe"
		 "088cd6f894494ac3d4ff67b794467c2aa1e3713453805b93a8bcb2d72a0d1b53"
		 "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0"
		 "6963de2ec3f8313bb95505f96bf0cf2025e7b07cefdb93e3d2e348720d401425"
		 "fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a"
		 "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
		 "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
		 "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1"
		 "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
		 "4b88b7ca61eb48bb22e2a4b589be66ba31ba805860db9ed51b4c484f3ef612a7"
		 "d12b1d9b0498280f60e5ec92e5ecec4b5db5370d05e787bc7cc49eae6fb07bc0"
		 "921f165deb8030167d44eaa82e85fcef0254b212439b550a9b6c924f281b5695"
		 "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
		 "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
		 "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
		 "9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9"
		 "e8bd9bbf6506afca133125b0be48b1f033b1c8647c628652ab7a2fe065c10ef0"
		 "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0"
		 "8dbbcb2b7ea7e7466ef575b60a92078359ac260c91fe908685b3983ab8e20e3f"
		 "d35afe834d1f808c2d5dc7137427832ccf99ad2d3d65d65f35cc5688404fdf30"
		 "fff0dc54ff5a194ba6593d1cce0fbb4fe8cf9da59fcef47f9e06dec6ef11b1fa"
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
 '(package-selected-packages '(company markdown-mode tramp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
