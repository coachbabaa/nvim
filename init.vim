
"======Leader Key=============
let mapleader=","
"=============================

syntax on "Turning Syntax on
set smartindent
set wrap
set undofile
filetype plugin indent on
filetype plugin on
filetype indent on
set gdefault
set nu rnu
set incsearch
set encoding=UTF-8
set hlsearch
set autoread wildmode=longest,list,full
set wildmenu "Tab completion everywhere
set confirm
set noruler "Setting up rulers & spacing
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set laststatus=2 "Setting the size of the command area, and airline status bar
set cmdheight=1
set spell spelllang=en_us
set backspace=indent,eol,start confirm
setlocal foldmethod=indent
set foldlevel=5
set splitbelow splitright
au BufRead,BufNewFile *.fountain filetype=fountain
autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
set termguicolors
set cursorline
set cursorcolumn
set colorcolumn=100
set complete+=kspell
set shortmess+=c
set completeopt=menuone,longest
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b


"Shutcut split Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Space> :EditVifm .<CR>
map <ENTER> :Goyo<CR>


"Shutcut split opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>
nnoremap <leader>f :FZF<cr>

nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h" <cr>
nnoremap <Right> :echomsg "use l"<cr>


nnoremap <leader>1 :NERDTreeToggle <cr>
onoremap z i(


let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsEditSplit = "vertical"

"Open UltiSnips edit function
nmap <leader>se :UltiSnipsEdit<cr>

let g:UltiSnipsNoPythonWarning = 1

let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3'

let g:loaded_python_provider = 0



set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin(expand('~/.vim/bundle'))
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
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'  "Shows changes if you
Plugin 'vim-airline/vim-airline' "Setting up my status
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'w0rp/ale'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-repeat'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'plasticboy/vim-markdown'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox' "Theme
Plugin 'jacoborus/tender.vim' "Theme
Plugin 'joshdick/onedark.vim' "Theme
Plugin 'vim-scripts/fountain.vim'
Plugin 'ap/vim-css-color' "Displays a preview of color
Plugin 'junegunn/goyo.vim' "Simple writing theme that
Plugin 'junegunn/limelight.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'alvan/vim-closetag'
Plugin 'vifm/vifm.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'turbio/bracey.vim'
Plugin 'AutoComplPop'
Plugin 'chun-yang/auto-pairs'
Plugin 'junegunn/vim-github-dashboard'
Plugin 'ryanoasis/vim-devicons'
Plugin 'xero/sourcerer.vim'
Plugin 'luochen1990/rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


colorscheme nord


function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Start NERDTree
autocmd VimEnter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p

autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine
autocmd FileType jinja2 UltiSnipsAddFiletypes jinja
autocmd FileType js UltiSnipsAddFiletypes javascript
autocmd FileType html UltiSnipsAddFiletypes htmldjango
autocmd FileType py UltiSnipsAddFiletypes django
autocmd FileType md UltiSnipsAddFiletypes markdown


"Navigation the complete menu item
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

"Select the complete menu item
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

"Cancel the completion menu item
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
