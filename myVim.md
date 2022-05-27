# [vim-plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
> [IP](https://seo.chinaz.com/raw.githubusercontent.com)  `sudo vim /etc/hosts`

    call plug#begin()
    ...
    call plug#end()


|Command|Description|
|---    |---    |
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
|---    |---    |
|:CocInstall plugName ... |Install extensions|
|:CocUninstall plugName |Uninstall coc extension|

**[coc-extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)**

- [x] **[coc-markdown-preview](https://github.com/weirongxu/coc-markdown-preview-enhanced)**
```
    :CocInstall coc-webview
    :CocInstall coc-markdown-preview-enhanced
```
|Command|Description|
|---    |---    |
|:CocCommand markdown-preview-enhanced.openPreview      |Open preview   |

- [x] **[coc-clangd](https://github.com/clangd/coc-clangd)**

# [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
```
Plug 'dhruvasagar/vim-table-mode'
```

| Command          | Description |
|------------------|-------------|
| :TableModeToggle | enable      |



# [NERDTree](https://github.com/preservim/nerdtree)

# [Undotree](https://github.com/mbbill/undotree)

# [auto-pairs](https://github.com/jiangmiao/auto-pairs)

# [vim-airline](https://github.com/vim-airline/vim-airline)
