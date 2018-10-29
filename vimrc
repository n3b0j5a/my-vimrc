"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible

"-------------------------------------------------------------------------------
"run pathogen plugin for easy install and run of other plugins
"-------------------------------------------------------------------------------
execute pathogen#infect()

"-------------------------------------------------------------------------------
" Enable file type detection. Use the default filetype settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype plugin on
filetype indent on

"-------------------------------------------------------------------------------
"create fancy status line
"-------------------------------------------------------------------------------
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax on

"-------------------------------------------------------------------------------
" Set colorscheme
"-------------------------------------------------------------------------------
colorscheme happy_hacking

"-------------------------------------------------------------------------------
"set cursor column and row highlight
"-------------------------------------------------------------------------------
highlight CursorLine guibg=darkgrey ctermbg=darkgrey
set cursorcolumn
set cursorline

"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
"set backspace=indent,eol,start " backspacing over everything in insert mode
"set backup                     " keep a backup file
set browsedir=current           " which directory to use for the file browser
set complete+=k                 " scan the files given with the 'dictionary' option
set history=200                 " keep 200 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
"set listchars=tab:>.,eol:\$    " strings to use in 'list' mode
"set mouse=a                    " enable the use of the mouse
set nowrap                      " do not wrap lines
set number relativenumber	" enable line numbers
set numberwidth=4 		" line numbers width set to 4
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set shiftwidth=8                " number of spaces to use for each step of indent
set showcmd                     " display incomplete commands
set showmatch 			" show matching braces
set smartindent                 " smart autoindenting when starting a new line
set spell 			" turn on spell check
set tabstop=8                   " number of spaces that a <Tab> counts for
"set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode

"-------------------------------------------------------------------------------
"Turn off arrow keys
"-------------------------------------------------------------------------------
noremap    <down> 		<Nop>
noremap    <left> 		<Nop>
noremap	   <right> 		<Nop>
noremap    <up> 		<Nop>

inoremap   <down> 		<Nop>
inoremap   <left> 		<Nop>
inoremap   <right> 		<Nop>
inoremap   <up> 		<Nop>

"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  exit vim
"    F4   -  open spell fix window
"    F5   -  auto indent whole document
"    F6   -  display previous error
"    F7   -  display next error
"    F8   -  Doxygen
"    F9   -  NERDTree
"    F10  -  ConqueGDB
"-------------------------------------------------------------------------------
noremap   <silent> <F2>        :w<CR>
noremap   <silent> <F3>        :q<CR>
noremap   <silent> <F4>        z=<CR>
noremap   <silent> <F5>        gg=G<CR>
noremap   <silent> <F6>        :cp<CR>
noremap   <silent> <F7>        :cn<CR>
nnoremap  <silent> <F8>        :Dox<CR>
nnoremap  <silent> <F9>        :NERDTreeToggle<CR>
nnoremap  <silent> <F10>       :ConqueGdb<CR>

inoremap  <silent> <F2>   <Esc>:w<CR>
inoremap  <silent> <F3>   <Esc>:q!<CR>
inoremap  <silent> <F4>   <Esc>z=<CR>
inoremap  <silent> <F5>   <Esc>gg=G<CR>
inoremap  <silent> <F6>   <Esc>:cp<CR>
inoremap  <silent> <F7>   <Esc>:cn<CR>
inoremap  <silent> <F8>   <Esc>:Dox<CR>
inoremap  <silent> <F9>   <Esc>:NERDTreeToggle<CR>
inoremap  <silent> <F10>  <Esc>:ConqueGdb<CR>

"-------------------------------------------------------------------------------
"ConqueGdb mappings
"-------------------------------------------------------------------------------
let g:ConqueGdb_Leader = '~'

"-------------------------------------------------------------------------------
"map moving between screens in Vim
"-------------------------------------------------------------------------------
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"-------------------------------------------------------------------------------
"Set doxygen style comments for c-support plugin
"-------------------------------------------------------------------------------
call mmtemplates#config#Add ( 'C', '~/.vim/bundle/vim-plugins/c-support/templates/doxygen.template', 'Doxygen', 'ntd' )

"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q : Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
nnoremap  <C-q>    :wqall<CR>

"-------------------------------------------------------------------------------
" comma always followed by a space
"-------------------------------------------------------------------------------
inoremap  ,  ,<Space>

let g:indentLine_char = '┆'
let g:indentLine_color_term=100
let g:indentLine_fileType = ['c','h','cpp']
:set list lcs=tab:\┆\ 

"-------------------------------------------------------------------------------
" highlight trailing white spaces and tabs
"-------------------------------------------------------------------------------
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$\| \+\ze\t/
