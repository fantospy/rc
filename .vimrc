set ai
set autoread
let mapleader = "\<Space>"
set nocp
runtime! plugin/ctrlp.vim
"
" set title
"------------------
" Vundle - Plugin to install with :PluginInstall
"------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'   " Vundle, mandatory
Plugin 'tpope/vim-fugitive'  " Git on Vim
Plugin 'tpope/vim-surround'  " Parentheses, brackets, quotes...
Plugin 'tComment'            " Comment file
Plugin 'a.vim'               " Header .h to .cpp
Plugin 'netrw.vim'           " Explore file Tree
" Plugin 'Raimondi/delimitMate' "autoclose bracket, parenthesis
Plugin 'scrooloose/nerdcommenter' "comment with \
Plugin 'ervandew/supertab'  "Tab completion
Plugin 'YankRing.vim'       "Ctrl+p, copy paste
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-easymotion' "Displace in the file
Plugin 'widox/vim-buffer-explorer-plugin'  "to use with \be
Plugin 'kien/ctrlp.vim' "open file with ctrl-o here
Plugin 'FelikZ/ctrlp-py-matcher' "faster search with ctrlp  # Error?
Plugin 'rking/ag.vim'  "Search with :Ag 
Plugin 'tpope/vim-vinegar'
" Plugin 'bling/vim-airline'
" Plugin 'mkitt/tabline.vim'
" Plugin  'bling/vim-bufferline'
Plugin 'vim-scripts/buftabs' "tab in the statusline
call vundle#end()            " required
filetype plugin indent on    " required

"Easy Motion Plugin
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore = '\v[\/]\.(gitignore|hg|svn)$'
let g:ctrlp_user_command = 'ag %s -l --nogroup --nocolor  -g ""'
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_custom_ignore = '\v[\/](IF2D_ROCKS.xcodeproj|benchmarks|run*|tbb|matlab|mani-fmm2d/)|(\.(swp|ico|git|svn|vtu))$'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_use_caching = 1
let g:yankring_replace_n_pkey = 'mm'
let g:yankring_replace_n_nkey = ',,'
let g:ctrlp_reuse_window = 'netrw'
let g:buftabs_only_basename=1
let g:buftabs_in_statusline=0
let g:buftabs_active_highlight_group="Visual"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*o,*vtu,*.DS_Store,restart* 
highlight Visual term=reverse cterm=bold ctermbg=239         ctermfg=255
" let g:loaded_tabline_vim = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
" let g:airline_theme = 'dark'

" Buffer explorer
map <C-b> <esc>:BufExplorer<cr>
map gb :bnext<cr>
map gB :bprev<cr>

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

"set mouse=a
set clipboard^=autoselect
map <C-c> "+y"

"Highlight color
syntax on
hi Comment    cterm=NONE   ctermfg=yellow  ctermbg=NONE

"if v:version > 703
"    set wildignorecase
"endif


"--- Vimdiff color
au FilterWritePre * if &diff | colorscheme laurentm |  endif
if &diff
    colorscheme laurentm
endif

"=== Mouse 
"set mouse=a
set scrolloff=5

set ruler                           "Line number on status bar
set nonumber                          "Line on the side
set autoindent 
set smartindent          "Auto indent
" set cindent
"set smarttab                  	    "Tab and backspace are smart
set expandtab       " Uses spaces instead of tabs
set tabstop=4       " Each tab is 4 spaces
set fileformats=unix
set noerrorbells

"=== Backup
set nobackup
"set nowritebackup
"set noswapfile
set backupdir=/Users/laurent/.vim/backup/
set directory=/Users/laurent/.vim/swap/

"=== Search
set incsearch
"set ignorecase                " search ignoring case REVERSE: set noic
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set smartcase
hi Search ctermbg=blue


"=== Remap
nore ; :
nore , ;


"=== Dimension
"set lines=25        " Vim starts with this many lines
"set columns=90      " You can change these numbers
set textwidth=90    " This sets the 'virtual' line number
"set formatoptions+=w

"=== Status line
hi StatusLine ctermbg=white ctermfg=236
set showcmd         " Show (partial) command in status line
set showmode        " Show the current mode
set laststatus=2    " Always show status line
"set statusline=%.40F%=%m\ %Y\ Line:\ %3l/%L[%3p%%]
" set statusline=%.40F%=%m\ %{(GitBranch())}\ \ \Line:\ %3l/%L[%3p%%]
set statusline+=[%n]
set statusline+=%.5t%=%m
" set statusline+=%{fugitive#head()}
" set statusline+=%3l/%L[%3p%%]

"define 3 custom highlight groups
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=white  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green
set statusline+=%2*  "switch to User1 highlight
set statusline+=%m   "modified +
set statusline+=%*  "switch to User1 highlight
set statusline+=%{fugitive#head()}
set statusline+=%3l/%L[%3p%%]

" set statusline+=%.10{buftabs#statusline()}

"  if !exists('g:airline_symbols')
"          let g:airline_symbols = {}
"            endif
" let g:airline_left_sep = '»'
" let g:airline_right_sep = ''
" let g:airline_section_warning=0
" let g:airline_section_a=0
" let g:airline_section_c='[%n]  %t%'
" let g:airline_section_x='%m'
" let g:airline_section_y=0
" let g:airline_section_z='%3l/%L[%3p%%]'


set list                        " show invisible characters
set listchars=tab:>·,trail:·    " but only show tabs and trailing whitespace
set ignorecase


" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Tab completion
set wildmode=longest,list,full
set wildmenu
set shiftwidth=4 

set hidden "buffer?  
"set paste "Remove tab when copy paste
set tabpagemax=50 "Tab number limit

 
" Automatically cd into the directory that the file is in
"autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ') "unworking witg :Gdiff

" ---------------------
" Netwr Plugin
" ---------------------
let g:netrw_browse_split= 4 "Use the previous window to open file
let g:netrw_liststyle= 3    "Tree view
let g:netrw_preview= 1      "To use with p (preview)
let g:netrw_winsize=80     "Size of the tab split
let g:netrw_keepdir = 0     "current directory is the browsing directory

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>


" Tab
" " :nmap <C-A> :tabprevious<cr>
" :nmap <C-K> :tabnext<cr>
" " :map <C-A> :tabprevious<cr>
" :map <C-K> :tabnext<cr>
" " :imap <C-A> :tabprevious<cr>
" :imap <C-K> :tabnext<cr>
