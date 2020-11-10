set nocompatible
filetype plugin on

call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
"Plugin 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'elzr/vim-json'
Plug 'alfredodeza/jacinto.vim'
Plug 'groenewege/vim-less'
Plug 'jelera/vim-javascript-syntax'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'alfredodeza/pytest.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
"Plugin 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
" YCM replaced by ale
"Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors'
Plug 'davidhalter/jedi-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ElmCast/elm-vim'
" Plugin 'ternjs/tern_for_vim'
Plug 'lilydjwg/colorizer'
Plug 'reasonml-editor/vim-reason'
Plug 'digitalrounin/vim-yaml-folds'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
" omicomplete doesn't work on types :/
"Plugin 'flowtype/vim-flow'
" create-react-app project doesn't allow --fix to be passed to eslint :/
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug '907th/vim-auto-save'

" All of your Plugins must be added before the following line
call plug#end()

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile
"set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * RainbowParentheses

let g:auto_save = 1  " enable AutoSave on Vim startup

let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>:au nerdtree :vert resize 30<CR>

"set filetype displays
au BufNewFile,BufRead *.djhtml set filetype=html
au BufNewFile,BufRead *.s4e set filetype=cpp
au BufNewFile,BufRead *.jsx set filetype=javascript

let g:SuperTabDefaultCompletionType = "context"

" Easier split navigation
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" flip splits http://stackoverflow.com/a/26515591/962292
"switch to horizontal
map <silent> <leader>k :NERDTreeTabsClose<cr>:windo wincmd K<cr>
"switch to vertical
map <silent> <leader>h :NERDTreeTabsClose<cr>:windo wincmd H<cr>
nnoremap ne :NERDTree
""
"" Whitespace
""
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType liquid set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType xml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType jsx set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType reason set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType less set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType markdown set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType c++ set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType elm set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType graphql set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType text set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab

set nowrap                        " don't wrap lines
"set expandtab                     " use spaces, not tabs
"set tabstop=2                     " a tab is two spaces
"set shiftwidth=2                  " an autoindent (with <<) is two spaces
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\~\             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

"toggle displaying tab as ~ with CTRL-t and CTRL-y
map <c-t> :set listchars=tab:\~\ <cr>
map <c-y> :set listchars=tab:\ \ <cr>

"increase/decrease screen width
map <silent> <leader>sv :vertical res+10<cr>
map <silent> <leader>svd :vertical res-10<cr>
map <silent> <leader>sr :res+10<cr>
map <silent> <leader>srd :res-10<cr>

" use ctags to open implementation in new tab with ctrl-\
map <C-\> :tab split<CR> :exe 'tj' expand('<cword>')<CR>

" vim-markdown
au BufNewFile,BufRead *.md  setf markdown
let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']

"vim-json
let g:vim_json_syntax_conceal = 0

"folding
"set foldmethod=syntax
"set foldmethod=indent
"set foldlevelstart=2

"let javaScript_fold=2         " JavaScript
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
let markdown_fold=1
"open folds with spacebar
nnoremap <Space> za
"never ever enter Ex mode
nnoremap Q <nop>
"
"open vimrc
map <silent> <leader>rc :tabnew ~/dotfiles/vimrc<cr>
"source vimrc
map <silent> <leader>rrc :source ~/.vimrc<cr>

" vertical line indentation
let g:indentLine_color_term = 160
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"off beep
set noeb vb t_vb=

syntax on
filetype off
filetype on
syntax enable

"indent guides, toggle with <Leader>ig
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

"display rule at 120 chars
set cc=120

map <silent> <leader>ct :checktime<cr>

"" Override eslint with local version where necessary.
"let g:syntastic_javascript_checkers = ['eslint', 'flow']
""let g:syntastic_javascript_checkers = []
"let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
""let local_eslint = finddir('node_modules', '.;') . '/react-scripts/node_modules/.bin/eslint'
"if matchstr(local_eslint, "^\/\\w") == ''
  "let local_eslint = getcwd() . "/" . local_eslint
"endif
"if executable(local_eslint)
  "let g:syntastic_javascript_eslint_exec = local_eslint
"endif
"let local_flow = finddir('node_modules', '.;') . '/.bin/flow'
"if matchstr(local_flow, "^\/\\w") == ''
  "let local_flow = getcwd() . "/" . local_flow
"endif

"if executable(local_flow)
  "let g:syntastic_javascript_flow_exec = local_flow
   ""doesn't show 'crashed checker' msg when no errors due to inability to
   ""parse flow's error msg but slows down check
  ""let g:syntastic_javascript_flow_exe = 'flow check'
"endif
"let g:flow#autoclose = 1

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_error_symbol = "x"
"let g:syntastic_warning_symbol = "w"

" https://vi.stackexchange.com/questions/8381/how-to-auto-fix-common-linting-errors-reported-via-syntastic
set autoread
 "autofix with eslint
let g:syntastic_javascript_eslint_args = ['--fix']
function! SyntasticCheckHook(errors)
  checktime
endfunction

"unite
nnoremap <C-p> :Unite file_rec/async<cr>
noremap <Leader>f :Unite -start-insert file_rec<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>y :Unite history/yank<cr>
" see recently opened files with <Leader>rf
nnoremap <silent> <Leader>rf :Unite -buffer-name=recent -winheight=10 file_mru<cr>
" see buffers with <Leader>bf
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                " turn on YCM

"jedi
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#usages_command = "<leader>u"
let g:jedi#force_py_version = 3

nmap <leader>p :setlocal paste! paste?<cr>

" colours
set background=dark
colo solarized
hi Normal ctermbg=none
highlight NonText ctermbg=none

nmap ,ct <Plug>Colorizer
" delete surrounding space
nnoremap <leader>dd F<space>xf<space>x
nnoremap <leader>vi :vert resize 5<CR>
nnoremap <leader>vd :vert resize -5<CR>
nnoremap <leader>hi :resize 5<CR>
nnoremap <leader>hd :resize -5<CR>

"" prettier
"autocmd FileType javascript set formatprg=prettier\ --single-quote\ --trailing-comma=es5\ --print-width=100\ --stdin
"autocmd BufWritePre *.js :normal gggqG
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
"let g:neoformat_try_formatprg = 1
"augroup NeoformatAutoFormat
    "autocmd!
    "autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
                                                            "\--stdin\
                                                            "\--print-width\ 80\
                                                            "\--single-quote\
                                                            "\--trailing-comma\ es5
    "autocmd BufWritePre *.js,*.jsx Neoformat
"augroup END
"ale
let g:ale_python_flake8_use_global = 1
let g:ale_python_black_use_global = 1
let g:ale_python_mypy_use_global = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'mypy']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python': ['black']
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = 'x'
let g:ale_sign_warning = 'w'
let g:ale_completion_enabled = 0
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
autocmd FileType qf setlocal wrap

nmap ff :call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))
autocmd BufRead,BufNewFile *.md setlocal spell

:command Pdb :normal o import ipdb<cr>ipdb.set_trace()<cr><ESC>
