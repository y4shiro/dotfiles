set fenc=utf-8 "文字コードをUTF-8に設定
set nobackup "バックアップファイルを作らない
set noswapfile "スワップファイルを作らない
set hidden "編集中でも他のファイルを開けるように
set showcmd "入力中のコマンドをステータスに表示する

" 表示設定
syntax on "コードの色分け
colorscheme desert
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

"NeoBundle Scripts-----------------------------
if &compatible
      set nocompatible               " Be iMproved
      endif

      " Required:
      set runtimepath^=/Users/yashiro/.vim/bundle/neobundle.vim/

      " Required:
      call neobundle#begin(expand('/Users/yashiro/.vim/bundle'))

      " Let NeoBundle manage NeoBundle
      " Required:
      NeoBundleFetch 'Shougo/neobundle.vim'

      " Add or remove your Bundles here:
      NeoBundle 'Shougo/neosnippet.vim'
      NeoBundle 'Shougo/neosnippet-snippets'
      NeoBundle 'tpope/vim-fugitive'
      NeoBundle 'ctrlpvim/ctrlp.vim'
      NeoBundle 'flazz/vim-colorschemes'

      " You can specify revision/branch/tag.
      NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

      " Required:
      call neobundle#end()

      " Required:
      filetype plugin indent on

      " If there are uninstalled bundles found on startup,
      " this will conveniently prompt you to install them.
      NeoBundleCheck
      "End NeoBundle Scripts-------------------------
