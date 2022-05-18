autocmd Filetype markdown map <LEADER>mark :TableModeToggle<CR>
autocmd Filetype markdown map mark :CocCommand markdown-preview-enhanced.openPreview<CR>

autocmd Filetype markdown inoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;l ---<Enter><Enter>
autocmd Filetype markdown inoremap ;b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ;d ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ;s `` <++><Esc>F`i
autocmd Filetype markdown inoremap ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ;p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ;a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;3 ###<Space><Enter><++><Esc>kA
