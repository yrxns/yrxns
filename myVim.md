# figlet
# ranger
# vimium
# Alacritty
# [vim-plug](https://github.com/junegunn/vim-plug)
	call plug#begin()
	...
	call plug#end()

	
|Command|Description|
|---	|---	|
|:PlugInstall|Install plugins|
|:PlugClean|Remove unlisted plugins|
|:PlugStatus|plugins'status|

# [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
	call plug#begin()
	Plug 'Valloric/YouCompleteMe'
	call plug#end()
**[指南](https://github.com/ycm-core/YouCompleteMe/wiki/Full-Installation-Guide)**

# [coc.nvim](https://github.com/neoclide/coc.nvim)
	call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	call plug#end()

	
	
|Command|Description|
|---	|---	|
|:CocInstall plugName ... |Install extensions|
|:CocUninstall plugName |Uninstall coc extension|

**[coc-extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)**

- [x] **[coc-markdown-preview](https://github.com/weirongxu/coc-markdown-preview-enhanced)**   
```
	:CocInstall coc-webview
	:CocInstall coc-markdown-preview-enhanced
```
|Command|Description|
|---	|---	|
|:CocCommand markdown-preview-enhanced.openPreview	|Open preview	|
