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

" Plug 'OmniSharp/omnisharp-vim'
Plug 'ElmCast/elm-vim'
Plug 'airblade/vim-rooter'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'crusoexia/vim-monokai'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim'
Plug 'dyng/ctrlsf.vim'
Plug 'elzr/vim-json'
Plug 'jdonaldson/vaxe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'keith/swift.vim'
Plug 'lambdatoast/elm.vim'
Plug 'morhetz/gruvbox'
Plug 'nikvdp/ejs-syntax'
Plug 'posva/vim-vue'
Plug 'psf/black', { 'tag': '19.10b0' }
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'tikhomirov/vim-glsl'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasr/molokai'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'

call plug#end()

" Highlight excess line width
" augroup vimrc_autocmds
"     autocmd!
"     autocmd FileType python hightlight Excess ctermbg=DarkGrey guibg=Black
"     autocmd FileType python match Excess /\%120v.*/
"     autocmd FileType python set nowrap
" augroup END

let g:dracula_colorterm = 0
" my config
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

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let username = 'jake'
let homedir = '/home/' . username . '/'

" PYMODE
let g:pymode_rope = 0
let g:pymode_rope_loopup_project = 0
let g:pymode_rope_complete_on_dot = 0

" let g:pymode_trim_whitespaces = 0
let g:pymode_lint_cwindow = 0

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
nnoremap <c-f> :Rg<cr>
