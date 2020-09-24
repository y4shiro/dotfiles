syntax enable "シンタックスハイライト有効

"setting
set encoding=utf-8 "文字エンコードを UTF-8 に指定
set nobackup       "バックアップファイルを作らない
set noswapfile     "スワップファイルを作らない
set autoread       "ファイル編集中に変更が入ると自動で読み込み直す
set showcmd        "入力中コマンドの表示

"エディタ
set number         "行番号を表示
set cursorline     "カーソルライン表示
set virtualedit=onemore "行末までカーソル移動を可能に
set smartindent    "改行時に自動でインデント整形
set visualbell     "ビープ時に画面を点滅
set showmatch      "括弧入力時に対応する括弧を表示
set scrolloff=1    "スクロール時の余白
set clipboard+=unnamed "OS のクリップボードと連携
set laststatus=2   "ステータスライン2行表示
set wildmenu       "vim コマンドの Tab 補完

"検索系
set hlsearch       "検索時に結果をハイライト
set incsearch      "インクリメントサーチ

"Tab 系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
set expandtab "Tabを半角スペースで入力
set tabstop=2 "Tabの表示幅

"キーマップ
" 折り返し時に表示行単位での移動が出来るように
nnoremap j gj
nnoremap k gk

" 段落ごとの移動
nnoremap <C-j> }
nnoremap <C-k> {
