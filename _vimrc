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

"Configura la tecla lider
let mapleader=" "

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
nmap <Leader>mk :!mkdir

"GITHUB
"Clonar
nmap <Leader>gcl :!git clone

"Diferenciar
nmap <Leader>gf :!git diff<CR>

"Log
nmap <Leader>gl :!git log<CR>

"Remote
nmap <Leader>gr :!git remote add origin 

"Remote status
nmap <Leader>grs :!git remote -v<CR>

"Fork
nmap <Leader>gf :!git remote add upstream 

"Actualizar fork
nmap <Leader>gfu :!git fetch upstream<CR>

"Rama
nmap <Leader>gb :!git branch 

"Borrar
nmap <Leader>grm :!git rm 

"Iniciar repositorio
nmap <Leader>gi :!git init<CR>

"Agregar todo
nmap <Leader>gal :!git add .<CR>

"Agregar archivo
nmap <Leader>ga :!git add

"Commit
nmap <Leader>gc :!git commit -m "

"Status
nmap <Leader>gs :!git status<CR>

"Push
nmap <Leader>gp :!git push origin<CR>
"Pluggins

call plug#begin('~/vimfiles/plugged')

"Arbol de archivos
Plug 'preservim/nerdtree'

"Lineas guia indentación
Plug 'nathanaelkane/vim-indent-guides'

"Emmet
Plug 'mattn/emmet-vim'

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
