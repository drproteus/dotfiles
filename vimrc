set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'

" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plug 'ElmCast/elm-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'keith/swift.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'elzr/vim-json'
Plug 'tikhomirov/vim-glsl'
Plug 'nikvdp/ejs-syntax'
" Plug 'nvie/vim-flake8'
Plug 'lambdatoast/elm.vim'
Plug 'jdonaldson/vaxe'
Plug 'morhetz/gruvbox'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'davidklsn/vim-sialoquent'
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'posva/vim-vue'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
" Plug 'OmniSharp/omnisharp-vim'
Plug 'crusoexia/vim-monokai'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasr/molokai'

call plug#end()

" Highlight excess line width
" augroup vimrc_autocmds
"     autocmd!
"     autocmd FileType python hightlight Excess ctermbg=DarkGrey guibg=Black
"     autocmd FileType python match Excess /\%120v.*/
"     autocmd FileType python set nowrap
" augroup END

" Powerline setup
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set laststatus=2


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
autocmd Filetype html,ruby,javascript,yml,yaml,json,haskell,ejs,htmldjango setlocal ts=2 sts=2 sw=2
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
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir = os.environ['VIRTUAL_ENV']
"     activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"     execfile(activate_this, dict(__file__=activate_this))
" EOF

set enc=utf-8
set fileencodings=ucs-bom,utf8,prc
set fileencoding=utf-8

set nofoldenable
filetype plugin indent on
let g:ackprg = 'ag'
"--nogroup --nocolor --column'
let g:ag_working_path_mode="r"

" PYMODE
let g:pymode_rope = 0
let g:pymode_rope_loopup_project = 0
let g:pymode_rope_complete_on_dot = 0
" let g:pymode_trim_whitespaces = 0
let g:pymode_lint_cwindow = 0

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


"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tabe'
      \ }
nnoremap <c-p> :FZF<cr>
nnoremap <c-f> :Ag<cr>
