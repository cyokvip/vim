"source $VIM\bundles.vim
"windows
"source Z:/Dropbox/vim/bundles.vim
"mac
source /Users/chenyong/.vim/bundles.vim
"linux
"source /home/peter/.vim/bundles.vim

" encoding dectection
"set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"set encoding=utf-8
"set termencoding=utf-8

"编码设置
set enc=utf-8
set termencoding=utf-8
"解决consle输出乱码
language messages zh_CN.utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 设置文件编码检测类型及支持格式
set fencs=ucs-bom,utf-8,chinese
"语言设置
set langmenu=zh_CN.UTF-8
"设置中文帮助

set helplang=cn

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on
" general
"Set mapleader
let mapleader = ","
"快速保存
nmap w :w!<cr>
"文件更新时自动重新读取文件
set autoread

source $VIMRUNTIME/mswin.vim
behave mswin

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"搜索逐字符高亮
set hlsearch
set incsearch

"--------
" Vim UI
"--------
" color scheme

"colorscheme desert

if has('gui_running')
    colorscheme desert
    "colorscheme solarized
    ""  set background=light
else
    colorscheme desert
    "set background=dark
endif


" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight  " conflict with highlight current line
set ignorecase
set smartcase

"禁止生成临时文件
set nobackup
set noswapfile


" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
"set nowrap                                                        " dont wrap lines
set wrap
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
imap <Nul> <Space>
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space
"autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

"{{{DoxygenToolkit注释
"以上分别使用DoxLic、DoxAuthor、Dox命令自动生成，注释的样式和文字完全可配置，在vimrc中添加即可。生成完注释，可以结合doxygen自动生成各种格式的文档。
let g:DoxygenToolkit_authorName="CY"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
"}}}

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=0 "0右边显示
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
    let g:tagbar_type_coffee = {
                \ 'ctagsbin' : 'coffeetags',
                \ 'ctagsargs' : '',
                \ 'kinds' : [
                \ 'f:functions',
                \ 'o:object',
                \ ],
                \ 'sro' : ".",
                \ 'kind2scope' : {
                \ 'f' : 'object',
                \ 'o' : 'object',
                \ }
                \ }

    let g:tagbar_type_markdown = {
                \ 'ctagstype' : 'markdown',
                \ 'sort' : 0,
                \ 'kinds' : [
                \ 'h:sections'
                \ ]
                \ }
endif

"{{{{NERD_tree.vim
" 让Tree把自己给装饰得多姿多彩漂亮点
let NERDChristmasTree=1
" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
" 指定书签文件
let NERDTreeBookmarksFile=$VIMFILES.'\NERDTree_bookmarks'
" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeMouseMode=2
" 是否默认显示书签列表
let NERDTreeShowBookmarks=1
" 是否默认显示文件
let NERDTreeShowFiles=1
" 是否默认显示隐藏文件
let NERDTreeShowHidden=1
" 是否默认显示行号
let NERDTreeShowLineNumbers=0
" 窗口位置（'left' or 'right'）
let NERDTreeWinPos='left'
" 窗口宽度
let NERDTreeWinSize=31
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

"}}}

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
"let g:user_zen_expandabbr_key='<C-j>'
"emment
let g:user_emmet_settings = {
            \  'indentation' : '  ',
            \  'perl' : {
            \    'aliases' : {
            \      'req' : 'require '
            \    },
            \    'snippets' : {
            \      'use' : "use strict\nuse warnings\n\n",
            \      'warn' : "warn \"|\";",
            \    }
            \  }
            \}

let g:user_emmet_expandabbr_key = '<c-e>'

let g:use_emmet_complete_tag = 1

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete


" ctrlp
"<leader>-f模糊搜索最近打开的文件(MRU)
"<leader>-p模糊搜索当前目录及其子目录下的所有文件
"c-j/k 上下选择
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"ctrlp-funky
"<leader>fu 进入当前文件的函数列表搜索
"<leader>fU 搜索当前光标下单词对应的函数
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']


" Keybindings for plugin toggle
map <F9> :DoxLic<CR>
map <F8> :DoxAuthor<CR>
map <F7> :Dox<CR>
nmap <F6> :NERDTreeToggle<cr>
nmap <F5> :TagbarToggle<cr>
"nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]
nnoremap <leader>h :GundoToggle<CR>

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
            \ if ! exists("g:leave_my_cursor_position_alone") |
            \     if line("'\"") > 0 && line ("'\"") <= line("$") |
            \         exe "normal g'\"" |
            \     endif |
            \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")

    set go=aAce "去掉难看的工具栏
    "set transparency=10 "透明背景"
    "set guifont=Monaco\ 13 "linux
    set guifont=Monaco:h13 "mac
    set showtabline=2
    "set columns=140
    "set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=1 " 隐藏Tab栏2是开启
    "防止macvim选中会自动复制到系统剪切板
    set guioptions-=a
    set guioptions-=A
    set guioptions-=aA
endif
"保存文件自动删除行尾空格或tab"
"au BufWritePre * sil %s/\s\+$//e
""
"au BufWritePre * %s/^$\n\+\%$//ge
"neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_quick_match = 1
"会自动选中第一个"
let g:neocomplcache_enable_auto_select = 1
"imap <expr> -  pumvisible() ? "\<Plug>(neocomplcache_start_unite_quick_match)" : '-'

"关闭文件后保存修改记录
set undofile
set undodir=/Users/chenyong/.vim/cache
set undolevels=1000 "最大撤回数量"

"关闭vim声音
set vb t_vb=
"定义try cache 模板
inoremap try try{<CR><CR>}catch( \Exception $e){<CR>}<ESC>2ki<Tab>

