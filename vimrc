"=================================================
" Basic Settings
" ================================================
filetype indent plugin on
syntax on " turn on syntax highlighting
set number " line numbers
set ruler
" set cursorline
colorscheme desert
set background=dark
set title
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
"set autoindent
set laststatus=2
set confirm
"set shiftwidth=4
"set tabstop=4
set expandtab autoindent shiftwidth=2 tabstop=2
set softtabstop=4
set expandtab
set smarttab
set smartindent
set mouse=a
set viminfo='10,\"100,:20,%,n~/.viminfo
set visualbell


"=================================================
" Functions
" ================================================
" function to restore cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

" restore cursor
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" auto-delete trailing whitespace
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd
      \ BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre Makefile :call <SID>StripTrailingWhitespaces()

