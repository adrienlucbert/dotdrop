syntax enable
filetype plugin indent on

" GUI ------------------------------------------------------------------------

colorscheme jellybeans
set termguicolors
set hidden
set number
set relativenumber
set nowrap
set scrolloff=999
set sidescrolloff=8
set colorcolumn=80
set completeopt=menuone,noinsert,noselect,preview
set splitright
set splitbelow
set signcolumn=yes
set cursorline
set nofoldenable
highlight Pmenu ctermbg=none guibg=none
highlight PmenuSel ctermbg=darkgray guibg=darkgray
highlight PmenuSbar ctermbg=gray guibg=gray
highlight PmenuThumb ctermbg=darkgray guibg=darkgray

" Edition --------------------------------------------------------------------

set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set noerrorbells

" Search ---------------------------------------------------------------------

set inccommand=split
set smartcase
set wildignorecase
set wildignore=*.o,*.gcno,*.gcda,node_modules,.git
set ignorecase
" set noautochdir

" Backup ---------------------------------------------------------------------

set backup
set undofile
set noswapfile
set undodir=~/.nvim/tmp/undo/
set backupdir=~/.nvim/tmp/backup/
set directory=~/.nvim/tmp/swap/

" Create those directories if needed
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif
" This dotfile is managed using dotdrop
