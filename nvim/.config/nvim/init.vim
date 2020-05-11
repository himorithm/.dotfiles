set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc

call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'cespare/vim-toml'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

call plug#end()


let g:pymode = 1
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1

"let g:nord_underline = 1
"let g:nord_italic = 1
"let g:nord_uniform_diff_background = 1
"let g:nord_cursor_line_number_background = 1

let g:ycm_autoclose_preview_window_after_completion=1

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1


let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

colorscheme gruvbox
set termguicolors

"Change Comment Color
"hi Comment guifg=LightBlue
"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
