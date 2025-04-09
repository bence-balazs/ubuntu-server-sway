set t_Co=256
set number
set ai
syntax on
set ruler
set showmatch
set hlsearch
set ignorecase
set smartcase
set showmode
set expandtab
hi Error ctermfg=Black guifg=Black
set scrolloff=10
set viminfo+=n~/.config/nvim/viminfo2
set cursorline
hi CursorLine ctermbg=233 guibg=#FFFFFF cterm=none gui=none
hi CursorLineNr ctermbg=236 ctermfg=magenta cterm=none gui=none
set laststatus=2
highlight Comment ctermfg=green

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Set fuzzy find: ctrl+p
nnoremap <c-p> :Files<cr>
function! FZF() abort
  let l:tempname = tempname()
  execute 'silent !fzf --multi ' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
  try
    execute 'cfile ' . l:tempname
    redraw!
  finally
    call delete(l:tempname)
    endtry
endfunction
command! Files call FZF()

" Enable or disable line numbers: ctrl+l
noremap <c-l> :set nu! nu?<cr>
