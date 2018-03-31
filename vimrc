set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

syntax enable
filetype plugin on
set number
let g:go_disable_autoinstall = 0

map <C-n> :NERDTreeToggle<CR>

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
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" autocomplete
Plugin 'Valloric/YouCompleteMe'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" vim-go
Plugin  'fatih/vim-go'

Bundle 'tomasr/molokai'

Bundle 'scrooloose/nerdtree'

Bundle 'dgryski/vim-godef'

Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/neocomplete'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'

"for js & html css
Bundle 'rstacruz/vim-ultisnips-css'
Bundle 'gregsexton/MatchTag'
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle "pangloss/vim-javascript"
Bundle 'marijnh/tern_for_vim'
Bundle 'othree/yajs.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'docunext/closetag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
let g:rehash256 = 1
" let g:molokai_original = 1
" set t_Co=256


autocmd BufWritePre *.go :Fmt
set hlsearch
let g:godef_split=0

" set for syntastic
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" config for YCM
" let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2    " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0    " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
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
