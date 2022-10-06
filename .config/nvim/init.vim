" From Luke Smiths's video - https://www.youtube.com/watch?v=d8XtNXutVto
" xset r rate 300 50

" https://www.youtube.com/watch?v=JWReY93Vl6g
" install folder:
" ~/.local/share/nvim/plugged
:set encoding=UTF-8
:set number
:set relativenumber
:set autoindent
:set tabstop=4 "tab = 4 spaces
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus

:set ignorecase " ignore cases (searching, etc)

" PlugInstall
call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw) ysiw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim.git'
Plug 'https://github.com/neoclide/vim-jsx-improve.git' " Plug 'chemzqm/vim-jsx-improve'
Plug 'https://github.com/tomasiser/vim-code-dark.git' " Plug 'tomasiser/vim-code-dark'
" Plug 'https://github.com/altercation/vim-colors-solarized.git'

" Typescript support
Plug 'https://github.com/leafgarland/typescript-vim.git' " Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'https://github.com/junegunn/vim-plug'
Plug 'https://github.com/peitalin/vim-jsx-typescript.git'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-c> :TerminalSplit bash<CR>
nnoremap <C-s> :setlocal spell! spelllang=en_us<CR>
" nnoremap <C-x> :q!<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact
  autocmd BufNewFile,BufRead *.tsx set syntax=typescript 
augroup END

set termguicolors
set background=dark
" colorscheme iceberg
" colorscheme jellybeans
colorscheme codedark
" colorscheme solarized

" Highlight current line and 80 characters limit
set cursorline
" set colorcolumn=80

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" coc.nvim config
" CocInstall coc-snippets		install individually
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]

" tsx highlights
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.js set filetype=typescriptreact
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666
