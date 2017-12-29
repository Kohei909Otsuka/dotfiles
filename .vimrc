set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'


" indentを色付け
NeoBundle 'nathanaelkane/vim-indent-guides'
" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'
"フォントの設定
NeoBundle 'altercation/vim-colors-solarized'
" ステータスバーの色分け
NeoBundle 'itchyny/lightline.vim'
" 複数行コメントアウト
NeoBundle 'tomtom/tcomment_vim'
" fuzzy search
NeoBundle "ctrlpvim/ctrlp.vim"
" ()の補完
NeoBundle 'Townk/vim-autoclose'
"plant uml syntax
NeoBundle "aklt/plantuml-syntax"
" go lang
NeoBundle 'fatih/vim-go'
call neobundle#end()

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

" custom config begin
" Status line
let g:lightline = {
        \ 'colorscheme': 'solarized',
              \ }
"sがkeyのバインディング
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sc <C-w>c
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>split<CR>
nnoremap sv :<C-u>vsplit<CR>
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" autocloseを特定のものについてoff
autocmd FileType *
  \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "'")
autocmd FileType *
  \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", '"')
" custom config end

"Basic setting begin
set relativenumber
set number
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set nrformats-=octal
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set noswapfile
set hlsearch
set incsearch
set autoindent
syntax enable
set background=dark
colorscheme solarized
"Basic setting end

