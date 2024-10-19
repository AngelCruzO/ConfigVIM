"Numero de linea
set number

"Habilita el uso del mouse -> a=all modes
set mouse=a

"Ancho de la columna de numero de linea
set numberwidth=1

"Comparte el portapapeles del sistema
set clipboard=unnamed

"Resaltado de sintaxis
syntax enable

"Muestra el valor de teclas en cmd
set showcmd

"Muestra la posición y columna actual
set ruler

"Codificación para caracteres unicode 
set encoding=utf-8 

"Muestra coincidencia de apertura y cierre 
set showmatch 

"Ancho de indentación 
set sw=2 

"Muestra la numeración apartir de la linea actual 
set relativenumber 

"Estable la barra de estado -> 2=siempre 
set laststatus=2 

"No muestra el modo actual
set noshowmode

"Deshabilitar swap
set nobackup
set nowritebackup
set noswapfile

"Configura la tecla lider
let mapleader=" "

"Abre archivos hacia la derecha
set splitright

"Atajos

"Guardar
nmap <Leader>w :w<CR>

"Salir
nmap <Leader>q :q<CR>

"Terminal
nmap <Leader>t :vert :term<CR>

"Vimrc
nmap <Leader>h :tabe $HOME/_vimrc<CR>

"PlugInstall
nmap <Leader>p :PlugInstall<CR>

"PlugClean
nmap <Leader>c :PlugClean<CR>

"Crear directorios
nmap <Leader>mk :!mkdir<Space>

"split vertical
nmap <Leader>sv :vsplit<Space>

"Pestaña anterior
nmap <Leader>tp :tabprev<CR>

"Pestaña siguiente
nmap <Leader>tn :tabnext<CR>

"split vertical
nmap <Leader>sv :vs

"Pluggins
call plug#begin('~/vimfiles/plugged')

"Arbol de archivos
Plug 'preservim/nerdtree'

"Lineas guia indentación
Plug 'nathanaelkane/vim-indent-guides'

"Emmet
Plug 'mattn/emmet-vim'

"Theme PaperColor
Plug 'NLKNguyen/papercolor-theme'

"vim-devicons
Plug 'ryanoasis/vim-devicons'

"vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"vim-airline
Plug 'vim-airline/vim-airline'

"vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

"powerline
Plug 'powerline/powerline'

"vim-signify (iconos de git)
Plug 'mhinz/vim-signify'

"fugitive (comandos git)
Plug 'tpope/vim-fugitive'

"vim-rhubarb (extensión para fugitive)
Plug 'tpope/vim-rhubarb'

"gv.vim (para mostrar los cambios de git mas detallados)
Plug 'junegunn/gv.vim'

"rainbow
Plug 'luochen1990/rainbow'

"vim-javascript
Plug 'pangloss/vim-javascript'

"vim-jsx
Plug 'mxw/vim-jsx'

"vim-closetag
Plug 'alvan/vim-closetag'

"vim-airline-clock
Plug 'enricobacis/vim-airline-clock'

"matchtag
Plug 'gregsexton/matchtag'

"loremipsum
Plug 'vim-scripts/loremipsum'

call plug#end()

"Config NERDTree

"Cierre automatico una vez abierto el archivo
let NERDTreeQuitOnOpen=1

"Abrir NERDTree
nmap <Leader>nt :NERDTreeFind<CR>

"Config vim-indent-guides

"Guias visibles
let g:indent_guides_enable_on_vim_startup=1

"Config emmet-vim

"Habilitar documentos html/css
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall

"mapeo de emmet
nmap <Leader>em <c-y>,

"Config PaperColor

set t_Co=256

"light or dark
set background=dark
colorscheme PaperColor

"Config vim-devicons
set guifont=FiraCode\ Nerd\ Font\ Mono\:h20

"Config vim-nerdtree-highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreePatternMatchHighlightFullName = 1

"Config vim-airline-themes
let g:airline_theme='minimalist'

"Config vim-airline
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'

let g:airline_powerline_fonts=1

"Config signify
set updatetime=100

"Config vim-jsx
let g:jsx_ext_required = 1

let g:jsx_pragma_required = 1

"Config vim-closetag

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

let g:closetag_filetypes = 'html,xhtml,phtml'

let g:closetag_xhtml_filetypes = 'xhtml,jsx'

let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ 'typescriptreact': 'jsxRegion,tsxRegion',
      \ 'javascriptreact': 'jsxRegion',
      \}

let g:closetag_shortcut = '>'

let g:closetag_enable_react_fragment = 1

"Config vim-airline-clock
let g:airline#extensions#clock#format = '%H:%M:%S'

let g:airline#extensions#clock#updatetime = 1000

