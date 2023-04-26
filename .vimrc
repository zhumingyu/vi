" File              : .vimrc
" Author            : zjhxmjl <zjhxmjl@gmail.com>
" Date              : 03.03.2021
" Last Modified Date: 03.03.2021
" Last Modified By  : zjhxmjl <zjhxmjl@gmail.com>

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"文件浏览
Plugin 'preservim/nerdtree'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

"语法检查/高亮
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"code文件树浏览
Plugin 'preservim/tagbar'
nmap <F8> :TagbarToggle<CR>

"注释
Plugin 'preservim/nerdcommenter' 

"自动匹配
Plugin 'jiangmiao/auto-pairs'

"todolist插件
Plugin 'Dimercel/todo-vim'
nmap <F2> :TODOToggle<CR>

"code snippets代码片断补全
Plugin 'SirVer/ultisnips'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"缩进提示
Plugin 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
"默认禁用
let g:indentLine_enable = 0

"快捷跳转
Plugin 'easymotion/vim-easymotion'

" TODO 终端自动运行python代码
Plugin 'jpalardy/vim-slime'
Plugin 'hanschen/vim-ipython-cell'
let g:slime_target = "vimterminal"

"添加自定义注释头
Plugin 'alpertuna/vim-header'
let g:header_field_author = 'zjhxmjl'
let g:header_field_author_email = 'zjhxmjl@gmail.com'
map <F4> :AddHeader<CR>

Plugin 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'

"html开发
Plugin 'mattn/emmet-vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set number
set encoding=utf-8 nobomb
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
