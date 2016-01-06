let g:ycm_global_ycm_extra_conf = "~.ycm_extra_conf.py"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'taylor/vim-zoomwin'
Plugin 'godlygeek/tabular'
Plugin 'jngeist/vim-multimarkdown'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'edsono/vim-matchit'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-tbone'


" Themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'jnurmine/Zenburn'
Plugin 'nielsmadan/harlequin'
Plugin 'tpope/vim-vividchalk'

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


"=============================================="
" MY VIM"


syntax enable

vmap <Tab> >
vmap <S-Tab> <
map <Esc><Esc> :w<CR>
map <C-a> <Nop>
map <C-x> <Nop>

map <C-n> :NERDTreeToggle<CR>

map <F1> :r!pbpaste<CR>

command! Q q
command! W w
nnoremap Q <Nop>

"Yank til EOL
map Y y$

nnoremap <Leader>rot ggVGg?

"Turn off arrows"
nnoremap <Up>       <Nop>
nnoremap <Down>     <Nop>
nnoremap <Right>    <Nop>
nnoremap <Left>     <Nop>

inoremap <Up>       <Nop>
inoremap <Down>     <Nop>
inoremap <Right>    <Nop>
inoremap <Left>     <Nop>

vnoremap <Up>       <Nop>
vnoremap <Down>     <Nop>
vnoremap <Right>    <Nop>
vnoremap <Left>     <Nop>


" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif


" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


set autoindent
set backspace=2
set cursorcolumn
set cursorline
set expandtab
set guifont=Liberation\ Mono\ 14
set printoptions=number:y
set guiheadroom=0
set hlsearch
set ignorecase
set incsearch
set laststatus=2
"set lazyredraw
set nrformats=octal,hex,alpha
set relativenumber
set number
set nowrap
set shiftround
set shiftwidth=4
set smartcase
set scrolloff=20
set shell=bash
set spelllang=en_us
set t_Co=256
set tabstop=4
set listchars=tab:▸\ ,trail:∎,nbsp:∎
set list

" Add to jumplist for multi j/k jumps.
nnoremap <silent> k :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'k'<CR>
nnoremap <silent> j :<C-U>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'j'<CR>

nnoremap <Leader>pdf :!mpdf %:r<CR>

"Word wrap at 80 chars
au BufRead,BufNewFile *.txt,*.md,*.tex setlocal textwidth=80

augroup spellgroup
    au!
    au BufNewFile,BufRead *.txt,*.tex,*.md,*.mmd,*.html setlocal spell
augroup END

set term=screen-256color
set background=dark
"colorscheme molokai
colorscheme harlequin
"colorscheme vividchalk
"colorscheme default

noremap <leader>h :colorscheme harlequin<CR>
noremap <leader>m :colorscheme molokai<CR>
noremap <leader>d :colorscheme default<CR>

"" Color the 81st column red
highlight ColorColumn ctermbg=196
call matchadd('ColorColumn', '\%81v', 100)

highlight TabLineFill term=bold cterm=bold ctermbg=235
highlight CursorColumn cterm=bold ctermfg=NONE ctermbg=234
highlight CursorLine cterm=bold
highlight SpellBad cterm=underline ctermbg=NONE ctermfg=1
highlight SpellCap cterm=underline ctermbg=NONE ctermfg=1
highlight SpellLocal cterm=underline ctermbg=NONE ctermfg=1
highlight SpellRare cterm=underline ctermbg=NONE ctermfg=1
highlight Visual cterm=NONE ctermfg=NONE ctermbg=238  ctermfg=NONE

" Remove trailing whitespace on each save.
au BufWritePre * :call <SID>RTW()

" Remove trailing whitespace function.
function! <SID>RTW()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

""" remove trailing whitespace
nnoremap <leader>rtw call <SID>RTW()
