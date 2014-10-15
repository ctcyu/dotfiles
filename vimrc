set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'slim-template/vim-slim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'elzr/vim-json'
Plugin 'plastic/vim-markdown'
Plugin 'alfredodeza/jacinto.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" syntax highlight django templating files (.djhtml) as html
au BufNewFile,BufRead *.djhtml set filetype=html
au BufNewFile,BufRead *.s4e set filetype=cpp

let g:SuperTabDefaultCompletionType = "context"

autocmd InsertEnter,InsertLeave * set cul! "underlines the current line in insert mode

" Easier split navigation
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

""
"" Whitespace
""
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType xml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType markdown set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType c++ set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab

set nowrap                        " don't wrap lines
"set expandtab                     " use spaces, not tabs
"set tabstop=2                     " a tab is two spaces
"set shiftwidth=2                  " an autoindent (with <<) is two spaces
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

"toggle displaying tab as ~ with CTRL-T and CTRL-Y
map <c-t> :set listchars=tab:\~\ <cr>
map <c-y> :set listchars=tab:\ \ <cr>

"increase screen width
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
set foldmethod=syntax
set foldlevelstart=2

let javaScript_fold=2         " JavaScript
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let markdown_fold=1
"open folds with spacebar
nnoremap <Space> za
"never ever enter Ex mode
nnoremap Q <nop>
"open vimrc
map <silent> <leader>rc :tabnew ~/dotfiles/vimrc<cr>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

