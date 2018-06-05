" Startup {{{

filetype indent plugin on " �����ļ����ͼ��
" vim �ļ��۵���ʽΪ marker
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

map <leader>tn :tabnew<cr> " �±�ǩ
map <C-c> "+y
map <leader>t :TlistToggle<cr> " �л�Tlist
map <leader>cmd :!start<cr> " �򿪵�ǰĿ¼cmd
map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc> "��ӡ��ǰʱ��
map <F2> :NERDTreeToggle<CR> " �л�Ŀ¼
map <M-y> :tabp<CR> " ��һ����ǩ
map <M-u> :tabn<CR> " ��һ����ǩ

imap <C-v> "+gP 
inoremap jj <esc> " jj�˳��༭ģʽ
inoremap <C-BS> <Esc>bdei " ɾ����ǰ��
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>
inoremap <S-CR> <HOME><CR>
inoremap <C-CR> <END><CR><UP> 

nmap <leader>s :source $VIM/_vimrc<cr>
nmap <leader>e :e $VIM/_vimrc<cr>
nmap <C-j> <C-W>j " �ƶ��ָ��
nmap <C-k> <C-W>k " �ƶ��ָ��
nmap <C-h> <C-W>h " �ƶ��ָ��
nmap <C-l> <C-W>l " �ƶ��ָ�� 

" ����ģʽ�� alt+j,k,h,l �����ָ�ڴ�С
nnoremap <leader>w :set wrap!<cr> " ���û��з�ʽ
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>
nnoremap <C-left> :bn<CR> "�л�Buffer״̬
nnoremap <C-right> :bp<CR>  "�л�Buffer״̬ 
nnoremap zj :w<CR> " ���浱ǰ�ļ�
nnoremap <M-d> <C-d> " �·�����
nnoremap <M-f> <C-f> "�·�����"
nnoremap <M-i> <C-u> "�Ϸ�����"
nnoremap <M-o> <C-b> "�Ϸ�����"
nnoremap <S-CR> O<ESC> " ������������
nnoremap <C-CR> o<ESC><UP> " ������������

vnoremap <BS> d
vnoremap <C-c> "+y

cmap <C-V> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']


" }}}
" =====================================================================================================================================
" Genzoeral {{{

set nocompatible "����������չ����
set noswapfile " ���ý����ļ�
set history=100 " ���Ժ��˵Ĳ���
set autochdir " ���ݱ༭���ļ��Զ��л�����Ŀ¼
set whichwrap=b,s,<,>,[,] " ���Ҽ�ͷ���������еı߽�ʱ����ת��
set nobomb " ȥ��boom
set backspace=indent,eol,start whichwrap+=<,>,[,] " �ı�ɾ����ɾ�������׵���Ϊ
set clipboard+=unnamed " Vim ��Ĭ�ϼĴ�����ϵͳ�����干��
set winaltkeys=no " ���� alt ����ӳ�䵽�˵���

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

colorscheme darkblue " ��������
set cursorline " ͻ����ʾ��ǰ��
set hlsearch " ������ʾ�����Ĵ�
set ruler " ��״̬�����
set number " ��ʾ�к�
set laststatus=2 " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)  
set lines=35 columns=140 " ���ڴ�С

set vb t_vb=  " �ر�����
au GuiEnter * set t_vb= " �ر�����

set splitbelow " �ָ�����Ĵ���λ�ڵ�ǰ�����±�
set splitright " �ָ�����Ĵ���λ�ڵ�ǰ�����ұ�
set ignorecase smartcase " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����
set incsearch " ������������ʱ����ʾ�������
set magic " ����ħ��

"����ʾ����/�˵���
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

syntax on " �Զ��﷨����
set matchtime=2 " ������ת��ƥ�����ŵ�ʱ��
set smartindent " ��������ʱʹ�������Զ�����
set showmatch " ��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ���� 
set shiftwidth=4 " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4  
set tabstop=4 " �趨 tab ����Ϊ 4  
set softtabstop=4 " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�  
set autoindent "�Զ�����
set expandtab
set foldmethod=indent

" }}}
" =====================================================================================================================================
" Plugin {{{

filetype off 
set rtp+=E:\VIM\vim81\bundle\vundle " �˴��涨Vundle��·��  
call vundle#begin('E:\VIM\vim81\bundle') " ����

Plugin 'VundleVim/Vundle.vim' " ��vundle�������汾
Plugin 'scrooloose/nerdtree' " ����Ŀ¼����
Plugin 'yegappan/mru' " �Զ��ָ��ϴι�����״̬
Plugin 'junegunn/fzf' 
Plugin 'junegunn/fzf.vim' 

call vundle#end()  


filetype plugin indent on " ���� ����vim�Դ��Ͳ����Ӧ���﷨���ļ�������ؽű�
" ���õ�����
" :PluginList        - �г����������õĲ��
" :PluginInstall     - ��װ���,׷�� `!` ���Ը��»�ʹ�� :PluginUpdate
" :PluginSearch foo  - ���� foo ; ׷�� `!` ������ػ���
" :PluginClean       - ���δʹ�ò��,��Ҫȷ��; ׷�� `!` �Զ���׼�Ƴ�δʹ�ò��

" }}}
" =====================================================================================================================================
" Plugin-set{{{

" NERDTree
let NERDTreeShowBookmarks=1 " ��ʾ��ǩҳ
let NERDTreeWinPos="right"   "�� NERDTree �Ĵ��������� vim ���ڵ��ҲࣨĬ��Ϊ��ࣩ
let NERDChristmasTree=1 "��Tree���Լ���װ�εö��˶��Ư����
let NERDTreeAutoCenter=1 " ���Ƶ�����ƶ�����һ������ʱ���Ƿ��Զ������������������
let NERDTreeMouseMode=2 " ָ�����ģʽ��1.˫���򿪣�2.��Ŀ¼˫�ļ���3.�����򿪣�
let NERDTreeShowFiles=1 " �Ƿ�Ĭ����ʾ�ļ�
let NERDTreeShowHidden=0 " �Ƿ�Ĭ����ʾ�����ļ�
let NERDTreeWinSize=31 " ���ڿ�
let NERDTreeIgnore = ['\.log$'] " ���ú��ӵ��ļ���
" let g:NERDTreeDirArrowExpandable = '?'
" let g:NERDTreeDirArrowCollapsible = '?'

" Taglist
"let Tlist_Auto_Open=1
set tags=tags
"set autochdir

" }}}
" =====================================================================================================================================
" Auto {{{

" ����vim�Զ����
autocmd GUIEnter * simalt ~x

" �Զ�����NERDTree
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
set nobackup " �����ļ�ʱ������
set backupcopy=yes " ���ñ���ʱ����ΪΪ���� 
" }}}
