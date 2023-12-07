let g:ale_disable_lsp = 1
source $DOTFILES/nvim/plugins.vim
source $DOTFILES/nvim/myscripts.vim

" KEYBINDINGS
map <C-p> :Files<CR>
map <C-f> :Ag<CR>
map nt :NERDTreeTabsToggle<CR>
nmap nr :TagbarToggle<CR>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" CONFIGS
let g:ctrlp_working_path_mode='ra'
let g:nerdtree_tabs_open_on_console_startup=2
let g:tablineclosebutton=1
let g:nerdtree_tabs_autofind=1
let g:NERDTreeDirArrowExpandable="\u00a0"
let g:NERDTreeDirArrowCollapsable="\u00a0"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let b:ale_fixers=['gofmt']
let g:ale_linters={'go': ['gopls']}
let g:ale_completion_autoimport = 1
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit=1
" Go syntax highlighting
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_extra_types=1
let g:go_highlight_operators=1

" Auto formatting and importing
let g:go_fmt_autosave=1
let g:go_fmt_command="goimports"

let g:go_bin_path = "/Users/lhendricks/go/bin"

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

highlight! link NERDTreeFlags NERDTreeDir
set ignorecase
syntax on
set cursorline
filetype on
filetype plugin on
filetype indent on
set nohlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" COLORSCHEME
colorscheme iceberg

" AUTOCMD
autocmd Filetype go setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype yml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype sql setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype make setlocal softtabstop=0 shiftwidth=8 noexpandtab
" automatically load nvim config on write (w)
autocmd! Bufwritepost init.vim source %
