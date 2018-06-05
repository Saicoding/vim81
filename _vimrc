" Startup {{{

filetype indent plugin on " 开启文件类型检测
" vim 文件折叠方式为 marker
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

exec 'cd ' . fnameescape('F:\WorkPlace\Python\python\AutoBaikeProject')
set autochdir

" }}}
" =====================================================================================================================================
" KeyMap {{{

let mapleader="\<Space>"

map <leader>tn :tabnew<cr> " 新标签
map <C-c> "+y
map <leader>t :TlistToggle<cr> " 切换Tlist
map <leader>cmd :!start<cr> " 打开当前目录cmd
map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc> "打印当前时间
map <F2> :NERDTreeToggle<CR> " 切换目录
map <M-y> :tabp<CR> " 上一个标签
map <M-u> :tabn<CR> " 下一个标签

imap <C-v> "+gP 
inoremap jj <esc> " jj退出编辑模式
inoremap <C-BS> <Esc>bdei " 删除当前词
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>
inoremap <S-CR> <HOME><CR>
inoremap <C-CR> <END><CR><UP> 

nmap <leader>s :source $VIM/_vimrc<cr>
nmap <leader>e :e $VIM/_vimrc<cr>
nmap <C-j> <C-W>j " 移动分割窗口
nmap <C-k> <C-W>k " 移动分割窗口
nmap <C-h> <C-W>h " 移动分割窗口
nmap <C-l> <C-W>l " 移动分割窗口 

" 正常模式下 alt+j,k,h,l 调整分割窗口大小
nnoremap <leader>w :set wrap!<cr> " 设置换行方式
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>
nnoremap <C-left> :bn<CR> "切换Buffer状态
nnoremap <C-right> :bp<CR>  "切换Buffer状态 
nnoremap zj :w<CR> " 保存当前文件
nnoremap <M-d> <C-d> " 下翻（）
nnoremap <M-f> <C-f> "下翻（）"
nnoremap <M-i> <C-u> "上翻（）"
nnoremap <M-o> <C-b> "上翻（）"
nnoremap <S-CR> O<ESC> " 在上面加入空行
nnoremap <C-CR> o<ESC><UP> " 在上面加入空行

vnoremap <BS> d
vnoremap <C-c> "+y

cmap <C-V> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']


" }}}
" =====================================================================================================================================
" Genzoeral {{{

set nocompatible "启用所有扩展功能
set noswapfile " 禁用交换文件
set history=100 " 可以后退的步骤
set autochdir " 根据编辑的文件自动切换工作目录
set whichwrap=b,s,<,>,[,] " 左右箭头键在遇到行的边界时可以转行
set nobomb " 去掉boom
set backspace=indent,eol,start whichwrap+=<,>,[,] " 改变删除键删除到行首的行为
set clipboard+=unnamed " Vim 的默认寄存器和系统剪贴板共享
set winaltkeys=no " 设置 alt 键不映射到菜单栏

" }}}
" =====================================================================================================================================
" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set langmenu=zh_CN
set encoding=utf8
let $LANG = 'en_US.UTF-8'
" }}}
" =====================================================================================================================================
" GUI {{{

colorscheme darkblue " 设置主题
set cursorline " 突出显示当前行
set hlsearch " 高亮显示搜索的词
set ruler " 打开状态栏标尺
set number " 显示行号
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)  
set lines=35 columns=140 " 窗口大小

set vb t_vb=  " 关闭声音
au GuiEnter * set t_vb= " 关闭闪屏

set splitbelow " 分割出来的窗口位于当前窗口下边
set splitright " 分割出来的窗口位于当前窗口右边
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果
set magic " 设置魔术

"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
set guioptions-=e
set nolist

" }}}
" =====================================================================================================================================
" Format {{{

syntax on " 自动语法高亮
set matchtime=2 " 短暂跳转到匹配括号的时间
set smartindent " 开启新行时使用智能自动缩进
set showmatch " 插入括号时，短暂地跳转到匹配的对应括号 
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4  
set tabstop=4 " 设定 tab 长度为 4  
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格  
set autoindent "自动缩进
set expandtab
set foldmethod=indent

" }}}
" =====================================================================================================================================
" Plugin {{{

filetype off 
set rtp+=E:\VIM\vim81\bundle\vundle " 此处规定Vundle的路径  
call vundle#begin('E:\VIM\vim81\bundle') " 必须

Plugin 'VundleVim/Vundle.vim' " 让vundle管理插件版本
Plugin 'scrooloose/nerdtree' " 加入目录管理
Plugin 'yegappan/mru' " 自动恢复上次工作的状态
Plugin 'junegunn/fzf' 
Plugin 'junegunn/fzf.vim' 

call vundle#end()  


filetype plugin indent on " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 常用的命令
" :PluginList        - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo  - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean       - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

" }}}
" =====================================================================================================================================
" Plugin-set{{{

" NERDTree
let NERDTreeShowBookmarks=1 " 显示书签页
let NERDTreeWinPos="right"   "将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDChristmasTree=1 "让Tree把自己给装饰得多姿多彩漂亮点
let NERDTreeAutoCenter=1 " 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeMouseMode=2 " 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
let NERDTreeShowFiles=1 " 是否默认显示文件
let NERDTreeShowHidden=0 " 是否默认显示隐藏文件
let NERDTreeWinSize=31 " 窗口宽
let NERDTreeIgnore = ['\.log$'] " 设置忽视的文件名
" let g:NERDTreeDirArrowExpandable = '?'
" let g:NERDTreeDirArrowCollapsible = '?'

" Taglist
"let Tlist_Auto_Open=1
set tags=tags
"set autochdir

" }}}
" =====================================================================================================================================
" Auto {{{

" 启动vim自动最大化
autocmd GUIEnter * simalt ~x

" 自动启动NERDTree
autocmd VimEnter * NERDTree

" }}}
" =====================================================================================================================================
"  functions{{{
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
" }}}
" TearDown{{{
set nobackup " 覆盖文件时不备份
set backupcopy=yes " 设置备份时的行为为覆盖 
" }}}
