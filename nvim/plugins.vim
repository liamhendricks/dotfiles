call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yangmillstheory/vim-snipe'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vimwiki/vimwiki'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
call plug#end()
