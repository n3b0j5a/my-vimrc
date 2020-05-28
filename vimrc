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
" Create fancy status line (replaced with airline plugin )
"-------------------------------------------------------------------------------
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set laststatus=2

"-------------------------------------------------------------------------------
" Create status line using vim airline plugin
"-------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='violet'

function! AirlineInit()
	let g:airline_section_b = airline#section#create(['branch'])
	let g:airline_section_c = '%F'
	let g:airline_section_z = '%p%% %03l:%03v 0x%02.2B %03.3b'
endfunction

autocmd User AirlineAfterInit call AirlineInit()


if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '≡'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '≡'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax on

"-------------------------------------------------------------------------------
" Set color scheme
"-------------------------------------------------------------------------------
colorscheme space-vim-dark
set termguicolors
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

"-------------------------------------------------------------------------------
" Set cursor column and row highlight
"-------------------------------------------------------------------------------
set cursorcolumn
set cursorline
"highlight CursorLine guibg=darkgrey ctermbg=darkgrey

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
set number relativenumber       " enable line numbers
set numberwidth=4               " line numbers width set to 4
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set shiftwidth=8                " number of spaces to use for each step of indent
set showcmd                     " display incomplete commands
set showmatch                   " show matching braces
set smartindent                 " smart autoindenting when starting a new line
set spell                       " turn on spell check
set tabstop=8                   " number of spaces that a <Tab> counts for
"set visualbell                 " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
set scrolljump=20               " jump when end of screen is reached
set nocscopeverbose             " suppress cscope duplicate database warning

"-------------------------------------------------------------------------------
" Set quick escape from insert mode.
"-------------------------------------------------------------------------------
inoremap jj <esc>
inoremap Jj <esc>
inoremap jJ <esc>
inoremap JJ <esc>

"-------------------------------------------------------------------------------
" Set quick command mode from normal mode.
"-------------------------------------------------------------------------------
noremap ; :

"-------------------------------------------------------------------------------
"Turn off arrow keys
"-------------------------------------------------------------------------------
noremap    <down>  <Nop>
noremap    <left>  <Nop>
noremap    <right> <Nop>
noremap    <up>    <Nop>

inoremap   <down>  <Nop>
inoremap   <left>  <Nop>
inoremap   <right> <Nop>
inoremap   <up>    <Nop>

"-------------------------------------------------------------------------------
" Easier navigation throug buffers
"-------------------------------------------------------------------------------
nnoremap <Leader>h :bd<CR>
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>k :bn<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"-------------------------------------------------------------------------------
" Remap function keys
"-------------------------------------------------------------------------------

noremap <silent> <F2> :TagbarToggle<CR>
noremap <silent> <F3> :UndotreeToggle<CR>
noremap <silent> <F4> :NERDTreeToggle<CR>
noremap <silent> <F5> :Magit<CR>
noremap <silent> <F9> :Make<CR>
noremap <silent> <F10> :Make install<CR>

inoremap <silent> <F2> <Esc>:TagbarToggle<CR>
inoremap <silent> <F3> <Esc>:UndotreeToggle<CR>
inoremap <silent> <F4> <Esc>:NERDTreeToggle<CR>
inoremap <silent> <F5> <Esc>:Magit<CR>
inoremap <silent> <F9> <Esc>:Make<CR>
inoremap <silent> <F10> <Esc>:Make install<CR>

"-------------------------------------------------------------------------------
" Map moving between screens in Vim
"-------------------------------------------------------------------------------
noremap <silent> <A-Up>    :wincmd k<CR>
noremap <silent> <A-Down>  :wincmd j<CR>
noremap <silent> <A-Left>  :wincmd h<CR>
noremap <silent> <A-Right> :wincmd l<CR>

"-------------------------------------------------------------------------------
" Set doxygen style comments for c-support plugin
"-------------------------------------------------------------------------------
call mmtemplates#config#Add ( 'C', '~/.vim/bundle/vim-plugins/c-support/templates/doxygen.template', 'Doxygen', 'ntd' )
nnoremap <Leader>d :Dox<CR>

"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q : Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
nnoremap  <C-q> :wqall<CR>

"-------------------------------------------------------------------------------
" comma always followed by a space
"-------------------------------------------------------------------------------
inoremap  ,  ,<Space>

"-------------------------------------------------------------------------------
" Set indent line plugin
"-------------------------------------------------------------------------------
let g:indentLine_char = '┆'
let g:indentLine_color_term=100
let g:indentLine_fileType = ['c','h','cpp', 'py']
set list lcs=tab:\┆\ 

"-------------------------------------------------------------------------------
" Highlight trailing white spaces and tabs
"-------------------------------------------------------------------------------
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/


"-------------------------------------------------------------------------------
" CScope settings. Used only for Linux kernel development
"-------------------------------------------------------------------------------
if has("cscope")
	set csprg=/usr/bin/cscope
	" change this to 1 to search ctags DBs first
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb

	" Using 'CTRL-\' then a search type makes the vim window
	" "shell-out", with search results displayed on the bottom

	noremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	noremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	noremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	noremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	noremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	noremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	noremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	noremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

	" Using 'CTRL-spacebar' then a search type makes the vim window
	" split horizontally, with search result displayed in
	" the new window.

	noremap <C-[>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	noremap <C-[>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	noremap <C-[>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	" Hitting CTRL-space *twice* before the search type does a vertical
	" split instead of a horizontal one

	noremap <C-[><C-[>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[><C-[>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[><C-[>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[><C-[>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[><C-[>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
	noremap <C-[><C-[>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	noremap <C-[><C-[>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

	set ttimeoutlen=500
endif
