""dein Scripts-----------------------------
if &compatible
      set nocompatible               " Be iMproved
      endif

      " Required:
      set runtimepath^=/Users/yashiro/.cache/dein/repos/github.com/Shougo/dein.vim

      " Required:
      call dein#begin(expand('/Users/yashiro/.cache/dein'))

      " Let dein manage dein
      " Required:
      call dein#add('Shougo/dein.vim')

      " Add or remove your plugins here:
      call dein#add('Shougo/neosnippet.vim')
      call dein#add('Shougo/neosnippet-snippets')

      " You can specify revision/branch/tag.
      call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

      " Required:
      call dein#end()

      " Required:
      filetype plugin indent on

      " If you want to install not installed plugins on startup.
      "if dein#check_install()
      "  call dein#install()
      "endif

      "End dein Scripts-------------------------
" setting
set fenc=utf-8 "文字コードをUTF-8に設定
set nobackup "バックアップファイルを作らない
set noswapfile "スワップファイルを作らない
set hidden "編集中でも他のファイルを開けるように
set showcmd "入力中のコマンドをステータスに表示する

" 表示設定
syntax on "コードの色分け
colorscheme hybrid "カラースキーマの指定
set number "行番号を表示
set cursorline "現在の行を強調表示
set cursorcolumn "現在の列を強調表示
set title "編集中のファイル名を表示
set showmatch "括弧入力中の対応する括弧を表示
set matchtime=1 "カーソル移動時間
set tabstop=4 "インデントをスペース4つに設定
set expandtab "tabを半角スペースで挿入する
set shiftwidth=4 "vimが自動生成するtab幅をスペース4つにする
set smartindent "オートインデント
set list "空白文字の可視化
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%  "空白文字の詳細
set visualbell "ビープ音を可視化
set laststatus=2 "ステータスラインを常に表示
set wildmode=list:longest "コマンドラインの補完

" 検索設定
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最終行まで到達したら最初に戻る

