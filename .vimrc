" --------- For VIM Practice ---------
" unavailable arrow button
noremap <UP> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" ------------ For Search ------------
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" ------------ For Edit --------------
set fenc=utf-8
set nobackup
set noerrorbells
set visualbell
set shellslash
set showmatch matchtime=1
set cmdheight=2
set backspace=indent,eol,start
set laststatus=2
set showcmd
set display=lastline
set list
set listchars=tab:^\ ,trail:~
set history=10000
hi Comment ctermfg=3
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set guioptions-=T
set guioptions+=a
set guioptions-=m
set showmatch
set smartindent
set noswapfile
set nofoldenable
set title
set number
set clipboard=unnamed,autoselect
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on
set nrformats=
set whichwrap=b,s,h,l,<,>,[,],~
set mouse=a

" ------------ Auto Reload .vimrc --------------
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" ------------ Auto Comment Off --------------
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" ------------ HTML/XML 閉じタグ自動補完 --------------
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
