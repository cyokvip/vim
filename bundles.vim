set nocompatible               " be iMproved
filetype off                   " required!

"windows
"set rtp+=Z:/Dropbox/vim/bundle/vundle/
"call vundle#rc("Z:/Dropbox/vim/bundle/")

"linux
"set rtp+=/home/peter/.vim/bundle/vundle/
"call vundle#rc("/home/peter/.vim/bundle/")

"mac
set rtp+=/Users/chenyong/.vim/bundle/vundle/
call vundle#rc("/Users/chenyong/.vim/bundle/")

" let Vundle manage Vundle
" required!
"------------------
" Code Completions
"------------------
"代码格式化
Bundle 'gmarik/vundle'
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/unite.vim'
"注释
Bundle 'vim-scripts/DoxygenToolkit.vim'
"SuperTab使Tab快捷键具有更快捷的上下文提示功能。 也就是一种自动补全插件
Bundle 'ervandew/supertab'
",be 显示已经打开的文件缓存
Bundle 'vim-scripts/bufexplorer.zip'
"html编辑用的
Bundle 'vim-scripts/Emmet.vim'
"符号自动补全
Bundle 'Raimondi/delimitMate'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"扩展了 vim 的 %，用于快速跳转到配对的标签（对编辑 html 有很大帮助）， 新版 vim 7.0 以上自带该插件
Bundle 'vim-scripts/matchit.zip'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
"快速加注释 ,cc 
Bundle 'scrooloose/nerdcommenter'
"文件时光机, 可以查看同一个文件之前的历史内容 ,h
Bundle 'sjl/gundo.vim'
"按照某个符号对齐
Bundle 'godlygeek/tabular'
"可以显示缩进的样式
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Bundle 'humiaozuzu/fcitx-status'
" 鼠标竖线
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
Bundle 'lepture/vim-jinja'
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/jquery.vim'

"------- FPs ------
"括号高亮
Bundle 'kien/rainbow_parentheses.vim'

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

"函数跳转
Bundle 'vim-scripts/taglist.vim'
"加载php命名空间
Bundle 'arnaud-lb/vim-php-namespace'

filetype plugin indent on     " required!
