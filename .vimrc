" Enable paste mode
set paste

" Basic settings
set tabstop=4        " Number of spaces that a <Tab> counts for
set shiftwidth=4     " Number of spaces to use for autoindent
set expandtab        " Convert tabs to spaces
set autoindent       " Maintain indent of current line
set smartindent      " Smart autoindenting for C-like programs

" Searching
set hlsearch         " Highlight search results
set incsearch        " Incremental search
set ignorecase       " Ignore case when searching
set smartcase        " Override ignorecase if search contains capitals

" Appearance
syntax on            " Enable syntax highlighting
set background=dark  " Use a dark background
set cursorline       " Highlight the current line

" Better file handling
set autoread         " Automatically read files changed outside of Vim
set hidden           " Allow switching buffers without saving
set undofile         " Enable persistent undo

" Interface
set showcmd          " Show (partial) command in the last line of the screen
set showmode         " Show mode (insert/normal) at the bottom
set wildmenu         " Visual autocomplete for command menu
set wildmode=longest,list " Command-line completion mode
set ruler            " Show line and character position of the cursor

" Convenience
set mouse=a          " Enable mouse support in all modes
set clipboard=unnamedplus " Use system clipboard
set splitright       " Vertical splits open to the right
set splitbelow       " Horizontal splits open below
set scrolloff=8      " Keep 8 lines visible when scrolling

" Performance
set lazyredraw       " Do not redraw while executing macros
set updatetime=300   " Faster completion

" Key mappings
nnoremap <C-s> :w<CR>    " Save file with Ctrl+s
inoremap <C-s> <Esc>:w<CR>a " Save file with Ctrl+s in insert mode

" Plugin settings (if using any)
" Example: Enable NERDTree on startup
" autocmd vimenter * NERDTree

" Enable line wrapping at 80 characters
set textwidth=80
set wrap
set linebreak

" Enable visual line wrapping
set formatoptions+=t

" Auto commands to disable autoindenting in paste mode
autocmd InsertLeave * set nopaste
autocmd InsertEnter * set paste

" Map <C-g> to clear all content without affecting clipboard and enter insert mode
nnoremap <C-g> ggVG"_dI
