set nocompatible    "不要兼容vi
filetype off    "关闭文件类型检测

set nu  "行号
set ruler   "状态栏

set hlsearch    "搜索高亮
set incsearch   "增量搜索
set ic    "搜索时不区别大小写

set autoindent
set smartindent

set shiftwidth=4
set tabstop=4
set expandtab

set t_Co=256    "设置256色显示

set cursorline  "设置光标高亮显示
set cursorcolumn    "设置光标垂直高亮显示

syntax enable
syntax on

"支持中文显示
set fileencodings=utf-8,gd2312,gb18030,gbk
set termencoding=utf-8
set encoding=utf-8

set background=dark

set mouse=a
set backspace=indent,eol,start

"插入模式下的移动
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>
imap <c-h> <left>

"修改leader键为逗号
"let mapleader=","

"<leader><space>快速保存
nmap <leader><space> :w<cr>

"<leader>n取消搜索高亮
"nmap <leader>n :noh<cr>



"Vundle Settig
"{
"安装vundle插件
"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"vim-scripts www.vim-scripts.org/vim/scripts.html

"let Vundle manage Vundle
Bundle 'gmarik/vundle'

"colorscheme
Bundle 'Solarized'
    colorscheme solarized
"    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"

"highlight keyword
Bundle 'mark'

"taglist
Bundle 'taglist.vim'
	let Tlist_Show_One_File=1
	let Tlist_Exit_OnlyWindow=1
	nmap <leader>t :Tlist<CR>

Bundle 'Lokaltog/vim-powerline'
	set laststatus=2
	let g:Powerline_symbols='unicode'
"}
filetype plugin indent on

