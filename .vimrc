set nocompatible
filetype off

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Always show line numbers
set number

"Deadly-Sin
set mouse=a

set t_Co=256
colorscheme mustang
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
    autocmd FileType python hi Normal guifg=White guibg=Black 
	autocmd FileType python match Normal /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

"Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline setup
set guifont=Ubuntu\ Mono\ for\ VimPowerline\ 11.5
set laststatus=2

"Fugitive
Bundle 'tpope/vim-fugitive'

"NerdTree
Bundle 'scrooloose/nerdtree'

"Python-mode
Bundle 'klen/python-mode'

"Jedi-vim
Bundle 'davidhalter/jedi-vim'

"Color-scheme
Bundle 'flazz/vim-colorschemes'

"YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

"Indent-guide
"Bundle 'Yggdroot/indentLine'

"Scala
Bundle 'derekwyatt/vim-scala'

"Scala sbt
Bundle 'ktvoelker/sbt-vim'

"Javascript syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
map <F2> :NERDTreeToggle<CR>

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_options_colorcolumn = 0

" Don't autofold code
let g:pymode_folding = 0

"Powerline
let g:Powerline_symbols = 'fancy'

"IndentLine char
"let g:indentLine_char = ''

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif
