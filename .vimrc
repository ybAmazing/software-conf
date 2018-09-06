set nocompatible             " be iMproved, required
filetype on                  " 开启文件类型检测，taglist、tagbar可能需要
syntax on                    " 语法检测开启
set hlsearch                 " 设置搜索结果高亮显示
set number                   " 设置显示行号
set cursorline               " 设置当前行高亮显示
" highlight clear CursorLine
highlight CursorLineNR ctermbg=red   " 设置行号高亮
" set cursorcolumn             " 设置当前列高亮显示
hi Search ctermbg=Red        " 设置高亮底色
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


nnoremap <silent> vv <C-w>v  " 设置垂直分屏快捷键

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'                " file/directory treee
Plugin 'scrooloose/nerdcommenter'           " code commenter
Plugin 'majutsushi/tagbar'
Plugin 'ajh17/VimCompletesMe'
Plugin 'gnattishness/cscope_maps'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 设置分屏快速切换快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <F2> :NERDTree<CR>          " 设置nerdtree快捷键
let NERDTreeMapOpenInTab='<ENTER>'            " 设置nerdtree用新tabview打开文件
" autocmd VimEnter * NERDTree                   " 自动启动nerdtree

nnoremap <silent> <F8> :TagbarToggle<CR>      " 设置Tagbar快捷键
" let Tlist_Auto_Open = 1                    
let Tlist_Use_SingleClick = 1
" let Tlist_WinHeight = 20

set nocscopeverbose
