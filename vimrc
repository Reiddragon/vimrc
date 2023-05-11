"
" Reiddragon's vimrc
"
" (mostly kinda) home grown as God intended
" Using vim-plug to manage the plugins because it makes it far easier to keep
" track of updates as well as keep the bit I need to sync minimal
"
" TODO:
" - Refactor the whole thing, it's getting pretty messy
"


" loading the default vimrc to extend it, could try copying and editing just
" the options I need from there to cut some fat but w/e, I may someday get to
" it or I may not
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" load plugins with Vim-Plug
" a couple notes to self:
" - please for the love of god keep this list alphabetic so it's not a
"   nightmare to go trough later
call plug#begin()

" Themes
Plug 'https://github.com/arzg/vim-substrata'
Plug 'https://github.com/chriskempson/base16-vim'
Plug 'https://github.com/cocopon/iceberg.vim'
Plug 'https://github.com/dylanaraps/wal.vim'  " for use with PyWal, doesn't work with `termguicolours` or GVim
Plug 'https://github.com/embark-theme/vim', {'as': 'embark'}
Plug 'https://github.com/jnurmine/Zenburn'
Plug 'https://github.com/laniusone/kyotonight.vim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/preservim/vim-colors-pencil'
Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'https://github.com/tssm/c64-vim-color-scheme'
Plug 'https://github.com/vim-scripts/hybrid.vim'


" Other Plugins
Plug 'https://github.com/editorconfig/editorconfig-vim'  " ¯\_(ツ)_/¯
Plug 'https://github.com/ervandew/supertab'              " fancy tab autocomplete
Plug 'https://github.com/fidian/hexmode'                 " Hex Editing thingy
Plug 'https://github.com/godlygeek/tabular'              " for alligning stuffs
Plug 'https://github.com/jiangmiao/auto-pairs'           " Some steroids for bracket pairs
Plug 'https://github.com/kovisoft/paredit'               " For S-Expression editing
Plug 'https://github.com/kovisoft/slimv'                 " (Common) Lisp dev env thingy
Plug 'https://github.com/luochen1990/rainbow'            " Make the parenthesis rainbowy (helpful for (((((LISPs))))))
Plug 'https://github.com/mhinz/vim-signify'              " show uncommited changes
Plug 'https://github.com/mhinz/vim-startify'             " Fancy startup screen
Plug 'https://github.com/ntpeters/vim-better-whitespace' " Whitespace Highlighting
Plug 'https://github.com/preservim/nerdcommenter'        " Steroids for the comments
Plug 'https://github.com/preservim/nerdtree'             " File Tree
Plug 'https://github.com/preservim/vim-pencil'           " For writing le epic prose
Plug 'https://github.com/preservim/vim-thematic'         " Fancier theme management
Plug 'https://github.com/ryanoasis/vim-devicons'         " Devicons
Plug 'https://github.com/tpope/vim-eunuch'               " Integration with UNIXy tools
Plug 'https://github.com/tpope/vim-fugitive'             " Git integration so good it should be illegal
Plug 'https://github.com/tpope/vim-surround'             " Parenthesis shennanigans (among other things)
Plug 'https://github.com/wincent/terminus'               " brings some GVim goodies to terminal Vim
Plug 'https://github.com/yggdroot/indentline'            " Indent Hints


" Polyglot config (because it's kinda weird about some things)
let g:polyglot_disabled = ['autoindent']  " disable autoindent bullshit because it's bullshit when a lang just forces 2 space indents on me
Plug 'https://github.com/sheerun/vim-polyglot' " One to rule them all, one to find them, one to bring them all and in the darkness bind them

" Additional Language Support (for stuff Polyglot somehow doesn't support)
Plug 'https://gitlab.com/HiPhish/guile.vim'            " GNU Guile
Plug 'https://github.com/hylang/vim-hy'                " Hy
Plug 'https://github.com/janet-lang/janet.vim'         " Janet
Plug 'https://github.com/vim-pandoc/vim-pandoc'        " Pandoc
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax' " Moar Pandoc


" Fancy Statusbar
Plug 'https://github.com/vim-airline/vim-airline'        " statusline
Plug 'https://github.com/vim-airline/vim-airline-themes' " statusline themes

"let g:airline_theme='base16'  " set this when Airline struggles to pick a theme automatically
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" those little punks bellow don't seem to render properly with non-mono nerd
" fonts unless you add extra spaces to pad the symbols, that ends up being too
" wide with Hack tho
" * tested in Konsole and GVim GTK
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep=''
"let g:airline_right_alt_sep=''
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

set noshowmode  " because Airline already shows the current editor mode

call plug#end()


" Theming
if has('termguicolors')  " aka truecolor, generally pretty good to enable but some terminals
    set termguicolors    " and multiplexers like GNU Screen don't support it
endif
"filetype indent plugin on  " already set in the default vimrc
"syntax enable
colorscheme base16-default-dark
" because my poor vampire eyes can't handle daylight
set background=dark
set title
set cursorline

" General Options
set fileformats=unix  " fuck you \r (WILL fuck with files created on anything that doesn't use plain \n)
filetype plugin on
set colorcolumn=80
" Fix for background in Kitty
let &t_ut=''

packadd! matchit
runtime ftplugin/man.vim  " manpages go brrrr
set autoread  " automagically reload files if edited elsewhere

set number relativenumber numberwidth=5

" command bar stuffs
set wildmenu wildoptions=fuzzy,pum
set showcmd
set confirm  " ask for confirmation instead of failing when a buffer isn't written to disk
set belloff=all  " turn off the bell
" Indent stuffs
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
set list

" Supertab options
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabCompletionContexts = [
"\    's:ContextText',
"\]

let g:vim_markdown_conceal = 0  " disable Markdown conceal

" Pascal.vim settings
let pascal_fpc=1
let pascal_one_line_string=1

" AutoPairs config
" Disable AutoPairs in some filetypes so it doesn't conflict with Paredit
" `lisp` is actually Common Lisp, not a general ft for all lisps
au FileType clojure,hy,lisp,scheme let b:autopairs_loaded=1

" Rainbow Config
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'guis': [''], 'cterms': [''], 'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'lisp': { 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], },
\       'stylus': { 'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], },
\   }
\}


" Set a leader
let mapleader = " "


" NERDTree Settings
let NERDTreeChDirMode=3

" and bindings
nmap <Leader>ft  :NERDTreeToggle<enter>
nmap <Leader>fv  :NERDTreeToggleVCS<enter>

" toggle Hexmode
nmap <Leader>hx  :Hexmode<enter>

" Extra Key Bindings (mostly chords)
nmap <Leader>utk   gQterm<enter>wincmd K<enter>exec term_setsize('', 20, 0)<enter>vi<enter>
nmap <Leader>utj   gQterm<enter>wincmd J<enter>exec term_setsize('', 20, 0)<enter>vi<enter>
nmap <Leader>uth   gQterm<enter>wincmd H<enter>vi<enter>
nmap <Leader>utl   gQterm<enter>wincmd L<enter>vi<enter>
nmap <Leader>ud    :setlocal invdiff invscrollbind invcursorbind<enter>
nmap <Leader>ugd   :SignifyDiff<enter>
nmap <Leader>cr    :so ~/.vim/vimrc<enter>
map  <Leader>uc    <leader>c<space>
nmap <Leader>ur    :RainbowToggle<enter>
nmap <Leader>uws   :StripWhitespace<enter>
nmap <C-w>Q        :qa<enter>
nmap <Leader>to    :tabnew<enter>
nmap <Leader>tc    :tabclose<enter>
nmap <Leader>tp    :tabprev<enter>
nmap <Leader>tn    :tabnext<enter>
nmap <C-PageUp>    :tabprev<enter>
nmap <C-PageDown>  :tabnext<enter>


