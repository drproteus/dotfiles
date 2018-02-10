set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" let Vundle manage Vundle
" required !
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'ElmCast/elm-vim'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'keith/swift.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'elzr/vim-json'
Bundle 'tikhomirov/vim-glsl'
Bundle 'nikvdp/ejs-syntax'
" Bundle 'nvie/vim-flake8'
Bundle 'lambdatoast/elm.vim'
Bundle 'jdonaldson/vaxe'
Bundle 'morhetz/gruvbox'
" Bundle 'KeitaNakamura/neodark.vim'
" Bundle 'davidklsn/vim-sialoquent'
Bundle 'python-mode/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'posva/vim-vue'
Bundle 'dyng/ctrlsf.vim'
Bundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Bundle 'junegunn/fzf.vim'
Bundle 'tpope/vim-dispatch'
Bundle 'OmniSharp/omnisharp-vim'
Bundle 'crusoexia/vim-monokai'
Bundle 'tomasiser/vim-code-dark'
Bundle 'tomasr/molokai'

" Highlight excess line width
" augroup vimrc_autocmds
"     autocmd!
"     autocmd FileType python hightlight Excess ctermbg=DarkGrey guibg=Black
"     autocmd FileType python match Excess /\%120v.*/
"     autocmd FileType python set nowrap
" augroup END

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


" my config
set background=dark
colors codedark
set shiftwidth=4
set tabstop=4
set expandtab
filetype plugin on
filetype indent on
syntax on
set nu
" set statusline+=%F\ %l\:%c
set autochdir
nmap <leader>l :set list!<CR>
set mouse=a
set autoread
let NERDTreeQuitOnOpen = 1
set completeopt=menu
set linebreak
autocmd Filetype html,ruby,javascript,json,haskell,ejs,htmldjango setlocal ts=2 sts=2 sw=2
set noswapfile
set wildignore+=*.pyc
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g   :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

set enc=utf-8
set fileencodings=ucs-bom,utf8,prc
set fileencoding=utf-8

set nofoldenable
filetype plugin indent on
let g:ackprg = 'ag --nogroup --nocolor --column'

" PYMODE
let g:pymode_rope = 0
let g:pymode_rope_loopup_project = 0
let g:pymode_rope_complete_on_dot = 0
" let g:pymode_trim_whitespaces = 0
"
let g:ycm_semantic_triggers = { 'elm' : ['.'], }
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

let g:airline_theme = 'codedark'
