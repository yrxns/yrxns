
~/.viminfo		记录做过的操作记录
/etc/vimrc		整体vim的配置文年
~/.vimrc

set ruler		窗口右下角显示光标位置
set ignorecase		忽略大小写
set hlsearch		高亮匹配
set showcmd		窗口右下角显示未完成的命令
set wildmenu		显示所有的补全匹配
set incsearch		在输入查找模式是显示相应的匹配点
map Q gq		键映射,gq映射于Q
map <F5> i{<Esc>ea}<Esc>
syntax on		色彩高亮
set nowrap		禁止回绕行
set list		显示TAB键
set list&		恢复为默认值
set listchars=tab:>-,trail:-
set background=light	设置背景色
set background=dark	设置背景色
set autowrite		每次修改都会自动保存
set backup		产生备份文件
set backupext=.bak	设置备份文件的扩展名
set patchmode=.orig	保留下最初的原始文件（为空时原始文件不会保留）
