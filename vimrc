inoremap jk <ESC>
let mapleader = ','
set number  			" 显示行号
set relativenumber		" 显示相对行号
set incsearch           " 实时开启搜索高亮
set hlsearch			" 搜索结果高亮
set autoindent			" 自动缩进
set smartindent			" 智能缩进
set tabstop=4			" 设置tab制表符号所占宽度为4
set softtabstop=4		" 设置按tab时缩进宽度为4
set shiftwidth=4		" 设置自动缩进宽度为4
set tabstop=4           " 按下 Tab 键时，Vim 显示的空格数
set expandtab			" 缩进时将tab制表服转为空格
set softtabstop=4       " Tab 转为多少个空格
set smartcase           " 开启智能大小写查找
set encoding=utf-8      " Use UTF-8.
set showcmd             " Display incomplete commands.
set clipboard=unnamedplus " 开启系统剪切板
# set cursorline          " 高亮当前行
set ignorecase          " 设置忽略大小写
set smartcase           " 设置智能大小写
set ruler               " 设置显示当前位置
# set cursorline          " 光标所在的当前行高亮
set textwidth=80        " 设置行宽，即一行显示多少个字符
set showmode            " 在底部显示，当前处于命令模式还是插入模式
set noerrorbells        " 出错时，不要发出响声
set visualbell          " 出错时，发出视觉提示，通常是屏幕闪烁
set autoread            " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set listchars=tab:»■,trail:■    " 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
set list
" set spell spelllang=en_us       " 打开英语单词的拼写检查
let g:tokyonight_transparent_background = 1     " 背景透明
set history=1000        " Vim 需要记住多少次历史操作
filetype indent on      " 开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
filetype on			    " 开启文件类型检测
filetype plugin indent on  " 开启文件类型插件检测
syntax on 			    " 开启语法高亮


" 插件管理
call plug#begin()
" airline theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" airline end

" vim start
Plug 'mhinz/vim-startify'
" vim start end

" gruvbox
Plug 'morhetz/gruvbox'
" gruvbox end

" vim-javascript
Plug 'pangloss/vim-javascript'
" vim-javascript end

" surround.vim 
Plug 'tpope/vim-surround'
" surround end

" nerdtree.vim
Plug 'preservim/nerdtree'
" nerdtree end

" nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
"nerdtree-git-plugin

" code minimap
Plug 'wfxr/minimap.vim'
" minimap end

" delimitmate
Plug 'raimondi/delimitmate'
" delimitmate end

" vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides'
" vim-indent-guides end

" rainbow-parentheses.vim
Plug 'kien/rainbow_parentheses.vim'
" rainbow-parentheses end

" vim-devicons
Plug 'ryanoasis/vim-devicons'
" vim-devicons end

" vim-cpp-enhanced-highlight
Plug 'octol/vim-cpp-enhanced-highlight'
" vim-cpp-enhanced-highlight end

" ale
Plug 'dense-analysis/ale'
" ale end

" vim-nerdtree-syntax-highlight
Plug  'tiagofumo/vim-nerdtree-syntax-highlight'
" vim-nerdtree-syntax-highlight end

" theme molokai-vim
Plug 'tomasr/molokai'
" molokai end

" theme tokyonight-vim
Plug 'ghifarit53/tokyonight-vim'
" tokyonight end

" Dividing line
Plug 'Yggdroot/indentLine'
" indentLine end

" tagbar
Plug 'preservim/tagbar'
" tagbar end

" markdown-preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'iamcco/mathjax-support-for-mkdp'
" markdown-preview end

" telescope.nvim 文件模糊搜索
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
"telescope.nvim end

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'
" auto-pairs end

" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'
" vim-easy-align

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'
" vim-gitgutter end
call plug#end()

" airline
let g:airline_theme='bubblegum'		"Airline主题
let g:airline#extensions#tabline#formatter = 'jsformatter'      " 设置默认tab栏样式
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1 
let g:airline_powerline_fonts = 1     
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

"Start NERDTree when Vim
" autocmd VimEnter * NERDTree
nnoremap <C-n> :NERDTree<CR>
map <C-t> :NERDTreeClose<CR>
let g:NERDTreeWinSize = 25
let g:NERDTreeShowLineNumbers=1

" minimap-vim
let g:minimap_width = 11
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" rainbow_parentheses.vim
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
    \]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-devicons      显示文件图标
set encoding=UTF-8

" vim-cpp-enhanced-highlight    针对cpp的代码高亮
let g:cpp_class_scope_highlight = 1     " 默认情况下，类范围的突出显示处于禁用状态。要启用设置
let g:cpp_member_variable_highlight = 1     " 默认情况下，成员变量的突出显示处于禁用状态。要启用设置
let g:cpp_class_decl_highlight = 1      " 默认情况下，声明中的类名突出显示处于禁用状态。要启用设置
let g:cpp_posix_standard = 1    " 默认情况下，POSIX 函数的突出显示处于禁用状态。要启用设置

" vim-nerdtree-syntax-highlight
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" nerdtree-git-plugin    显示nerdtree git 状态
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" molokai-vim theme
"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme molokai

" theme tokyonight-vim
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" 代码缩进线
let g:indentLine_setColors = 0
nmap <C-s> :IndentLinesToggle<CR>

" tagbar
nmap <C-u> :TagbarToggle<CR>

" auto-pairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
