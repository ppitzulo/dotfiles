colorscheme codedark
:set number
:filetype plugin on
:syntax on
nnoremap <leader>ff :FZF<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'valloric/youcompleteme'
call plug#end()
