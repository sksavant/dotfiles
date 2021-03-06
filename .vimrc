syntax on
set mouse=a
let mapleader=","
set background=dark
set shiftwidth=2
set tabstop=2
set autoindent
set expandtab
set smartindent
set number
set pastetoggle=<F2>
set hidden
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch   
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.
nnoremap ; :
vmap Q gq
nmap Q gqap
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap j gj
nnoremap k gk
"noremap jk <Esc>:w<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))
if has("autocmd")
	  filetype plugin indent on
	endif

	set showcmd             " Show (partial) command in status line.
	set showmatch           " Show matching brackets.
	set ignorecase          " Do case insensitive matching
	set smartcase           " Do smart case matching
	set incsearch           " Incremental search
	set hidden              " Hide buffers when they are abandoned

"neobundle(https://github.com/Shougo/neobundle.vim.git)
set nocompatible              " Be Improved
filetype off                  " Required!

filetype plugin indent on
colorscheme default

map fb <Esc>:FufBuffer<CR>
map 4s <Esc>:vsplit<CR><C-l>:split<CR><C-h>:split<CR><C-l>:vsplit<CR>
