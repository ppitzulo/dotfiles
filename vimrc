hi Normal guibg=NONE ctermbg=NONE
:set number
:filetype plugin on
:syntax on
nnoremap <leader>ff :FZF<CR>
set tabstop=4
set expandtab
" Custom command to copy the entire file to the clipboard
command! CopyFileToClipboard :%!xclip -selection clipboard
" Map the custom command to a key combination (e.g., F2)
nnoremap <F2> :CopyFileToClipboard<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
call plug#end()
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
