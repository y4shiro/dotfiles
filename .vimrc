" dein
" Vim起動完了時にインストール
augroup PluginInstall
  autocmd!
  autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END

" 各プラグインをインストールするディレクトリ
let s:plugin_dir = expand('~/.vim/')

" dein.vimをインストールするディレクトリをランタイムパスへ追加
let s:dein_dir = s:plugin_dir . 'repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_dir

" dein.vimがまだ入ってなければ 最初に git clone
if !isdirectory(s:dein_dir)
  call mkdir(s:dein_dir, 'p')
  silent execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_dir)
endif

"dein plugin settings
if dein#load_state(s:plugin_dir)
  call dein#begin(s:plugin_dir)
endif

" ここからインストールするプラグイン
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('Shougo/neocomplcache-rsense.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('ConradIrwin/vim-bracketed-paste')
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('thinca/vim-quickrun')

" call dein#add('scrooloose/syntastic')
call dein#add('tpope/vim-endwise')
call dein#add('w0rp/ale')
call dein#add('benjie/neomake-local-eslint.vim')
call dein#add('pmsorhaindo/syntastic-local-eslint.vim')
call dein#add('mattn/emmet-vim')
call dein#add('alvan/vim-closetag')
call dein#add('kchmck/vim-coffee-script')
call dein#add('posva/vim-vue')

call dein#add('othree/yajs.vim')
" call dein#add('jelera/vim-javascript-syntax')
" call dein#add('pangloss/vim-javascript')

" neocomplcacheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

" Rsense用の設定
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

"rsenseのインストールフォルダがデフォルトと異なるので設定
let g:rsenseHome = expand("/Users/t40414/.rbenv/shims/rsense")
let g:rsenseUseOmniFunc = 1

""" markdown {{{
  autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
  autocmd BufRead,BufNewFile *.md  set filetype=markdown
  " Need: kannokanno/previm
  nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
  " 自動で折りたたまないようにする
  let g:vim_markdown_folding_disabled=1
" }}}

" syntastic
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_ruby_checkers = ['rubocop']

" eslint
let g:syntastic_javascript_checkers=['eslint']
" ここから下は Syntastic のおすすめの設定
" ref. https://github.com/scrooloose/syntastic#settings
let g:ale_linters = {
      \ 'html': [],
      \ 'css': ['stylelint'],
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint']
      \ }
let g:ale_linter_aliases = {'vue': 'css'}
let g:vue_disable_pre_processors=1
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" エラー行に sign を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時にチェックを実行する
let g:syntastic_check_on_open = 1
" :wq で終了する時もチェックする
let g:syntastic_check_on_wq = 0

" 基本設定
set fenc=utf-8 "文字コードをUTF-8に設定
set nobackup "バックアップファイルを作らない
set noswapfile "スワップファイルを作らない
set hidden "編集中でも他のファイルを開けるように
set showcmd "入力中のコマンドをステータスに表示する
set backspace=indent,eol,start
set clipboard+=unnamed "OSとクリップボード共有

" 表示設定
syntax on "コードの色分け
set number
set cursorline
set cursorcolumn
set title
set matchtime=1
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent "オートインデント
set list "空白文字の可視化
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%  "空白文字の詳細
set visualbell "ビープ音を可視化
set laststatus=2 "ステータスラインを常に表示
set wildmode=list:longest "コマンドラインの補完
set virtualedit=onemore
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
nnoremap <C-g> :!open %<CR> " browser preview with ctrl-g
au FileType javascript map <C-j> :!node %<CR>
" au FileType html map <C-g> :!open %<CR>

" 検索設定
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最終行まで到達したら最初に戻る
