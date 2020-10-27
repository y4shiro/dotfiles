set nocompatible " Vi互換モードをオフ（Vimの拡張機能を有効）
syntax on "シンタックスハイライト有効
filetype plugin indent on "ファイルタイププラグイン有効

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
call plug#end()

" colorschemes
" colorscheme iceberg
colorscheme molokai
" colorscheme hybrid

" ポップアップ周り
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
set pumheight=20 " 補完ポップアップの高さ

" asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"lightine
" coc-lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" ultisnipets
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"

"setting
set encoding=utf-8 "文字エンコードを UTF-8 に指定
set nobackup       "バックアップファイルを作らない
set noswapfile     "スワップファイルを作らない
set autoread       "ファイル編集中に変更が入ると自動で読み込み直す
set showcmd        "入力中コマンドの表示

"エディタ
set number              "行番号を表示
set cursorline          "カーソルライン表示
set virtualedit=onemore "行末までカーソル移動を可能に
set visualbell          "ビープ時に画面を点滅
set showmatch           "括弧入力時に対応する括弧を表示
set scrolloff=1         "スクロール時の余白
set clipboard+=unnamed  "OS のクリップボードと連携
set laststatus=2        "ステータスラインを常に表示
set wildmenu            "vim コマンドの Tab 補完
set backspace=indent,eol,start " 挿入モード時にバックスペースで削除できるように
set mouse=a             "バッファスクロール
set ruler               "カーソルが置かれている行数を表示
set nofixeol            "末尾の改行を消さない

"検索系
set ignorecase     "検索文字列の小文字大文字を区別しない
set wrapscan       "検索時、最後まで到達したら最初に戻る
set hlsearch       "検索時に結果をハイライト
set incsearch      "インクリメントサーチ

"Tab 系
" 不可視文字を可視化
set list "空白文字の可視化
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%  "空白文字の詳細
set expandtab    "Tabを半角スペースで入力
set tabstop=2    "Tabの表示幅
set shiftwidth=2 "自動的に入力されたインデントの空白を2つ分に設定
set softtabstop=2
set smartindent  "改行時に自動でインデント整形
set autoindent   "オートインデント

"キーマップ
" 折り返し時に表示行単位での移動が出来るように
nnoremap j gj
nnoremap k gk

" 段落ごとの移動
nnoremap <C-j> }
nnoremap <C-k> {

"HTML 閉じタグ補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
