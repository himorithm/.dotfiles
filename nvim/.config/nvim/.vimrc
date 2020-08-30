syntax enable
filetype plugin on
filetype indent on
command! MakeTags !ctags -R .

map <F6> :setlocal spell! spelllang=en_us<CR>

"Enable fuzy Search using find.
set path+=**

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Turn on the WiLd menu
set wildmenu


" Highlight search results
set incsearch
set hlsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic

set ignorecase
set smartcase
set noshowmode

" editor settings
set backspace=indent,eol,start                                    " More powerful backspacing
set whichwrap+=<,>,h,l

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set history=1000
set nocompatible
"set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
"set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
"set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set number relativenumber
set nu rnu
set timeout timeoutlen=8000 ttimeoutlen=100

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
"set wrap
"set textwidth=79
set smarttab
set expandtab       " expand tab to space

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set cursorline

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

if !has('gui_running')
  set t_Co=256
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

 " Format the status line
 " http://archive09.linux.com/feature/120126
 " set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ Column:\ %v\ %p%%



" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
        en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" How To Add A File Extension To vim Syntax Highlighting
" http://beerpla.net/2008/04/02/how-to-add-a-vim-file-extension-to-syntax-highlighting/
au BufNewFile,BufRead *.thrift set filetype=idl

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

"Enable Line Wrap in MarkDown



" http://vim.wikia.com/wiki/Indenting_source_code
" Using the "after" directory as above is recommended, but it is possible to put commands such as the following in your vimrc as an alternative:
" e.g. autocmd FileType html setlocal shiftwidth=2 tabstop=2
" e.g. autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4 cindent
autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4 cindent
autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType html setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType idl  setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType markdown setlocal wrap textwidth=79
autocmd FileType python setlocal expandtab autoindent tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 fileformat=unix
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4 cindent
autocmd FileType groovy setlocal expandtab shiftwidth=4 softtabstop=4 cindent

" Markdown
autocmd FileType markdown nnoremap <F5> :w<bar>!pandoc -f markdown-implicit_figures -s % -o %:r.pdf; <CR><CR>


" Java Auto Complete 
autocmd FileType java abbr psvm public static void main(String[] args){<CR>}<esc>O
autocmd FileType java abbr pkg package com.intothebasket. ;<CR><esc>1k$1hi
autocmd FileType java abbr sout System.out.println("");<esc>2hi
autocmd FileType java abbr fori for (int i = 0; i < ; i++) {<CR><CR>}<CR><esc>3k8w
autocmd FileType java abbr pcl public class {<CR><CR>}<CR><esc>3k13li
autocmd FileType java abbr pcl public class {<CR><CR>}<CR><esc>3k13li
autocmd FileType java abbr { {<CR><CR>}<CR><esc>2ki<Tab>
autocmd FileType java abbr imp import ;<CR><esc>1k1wi
autocmd FileType java abbr ps public static 
autocmd FileType java abbr cat catch(Exception e) {<CR>e.printStackTrace();<CR>}<CR><esc>

"Javascript Auto Complete
autocmd FileType javascript abbr con console.log('')<esc>1hi
autocmd FileType javascript abbr { {<CR><CR>}<CR><esc>2ki<Tab>
autocmd FileType javascript abbr fori for (let i = 0; i < ; i++) {<CR><CR>}<CR><esc>3k8w
autocmd FileType javascript abbr ifi if(){<CR><CR>}<CR><esc>3k
autocmd FileType javascript nnoremap <F5> :w<bar>!node  %; <CR>

"Groovy 
autocmd FileType groovy abbr pkg package com.intothebasket. ;<CR><esc>1k$1hi
autocmd FileType groovy abbr main  static void main(String[] args){<CR>}<esc>O
autocmd FileType groovy abbr cls class {<CR>}<esc>2k2wi
autocmd FileType groovy abbr pri println ""<esc>1hi
autocmd FileType groovy abbr { {<CR><CR>}<CR><esc>2ki<Tab>
autocmd FileType groovy nnoremap <F5> :w<bar>!groovy  %;<CR>

" Custom-Micros
" Surround current word with back quote
let @s='ysW`'
" Surround current word with **
let @w='ciW**"**'
let @q='c3iW**"**'
" Break 
" current line to max 80 chars. Wrap text
let @f='80lwi'

"Markdown Make List
let @l='^i* €kddd€kr'

"Some Shortcuts
let mapleader = ","

" copy and paste using
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"Disable search highlight
nnoremap <leader>h :noh<CR>
" reload config
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
"save
nnoremap <leader>s :w<bar>MakeTags<CR><CR>
" Next Buffer
nnoremap <leader>n :bn<CR>
" Previous Buffer
nnoremap <leader>p :bp<CR>
" close buffer
nnoremap <leader>d :bd<CR>
" open file using fzf
nnoremap <leader>ov  :e ~/.config/nvim/.vimrc<CR>
nnoremap <leader>o   :Files ~/
nnoremap <leader>ow  :Files ~/work/<CR>
nnoremap <leader>od  :Files ~/.config/<CR>
nnoremap <leader>oc  :Files ~/work/code/<CR>
nnoremap <leader>ob  :~/<CR>
nnoremap <leader>owb :~/work/<CR>

"Manage Git
"
nnoremap <leader>ga :Git add . <bar>Gstatus<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<bar>Gstatus<CR>

"Change current local directory
nnoremap <leader>cd :cd %:p:h<bar>pwd<CR>

nnoremap <leader>ob :Buffers<CR>


" Wrap Text max 80
nnoremap <leader>w @f

" Markdown bold
nnoremap <leader>b @w

" Markdown code
nnoremap <leader>v @q

nnoremap <leader>t @s

nnoremap <leader>l @l

nnoremap <leader>8 i**<ESC>

"auto complete using tab
"imap <Tab> <C-N>

" auto complete file path in insert mode
imap <F2> <C-X><C-F>
   
