" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" TODO: Pick a leader key
let mapleader = ","

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Disable automatic commenting on new line:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Set pasting automatically
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

"""ASM
	" Code snippets
	autocmd FileType asm inoremap ,def define(<++>,<++>)
	autocmd FileType asm inoremap ,main <Tab><Tab><Tab>.balign<Space>4<Enter><Tab><Tab><Tab>.global<Space>main<Enter>main:<Tab>stp<Space>x29,<Space>x30,<Space>[<++>,<Space>-16]!<Enter><Tab><Tab><Tab>mov<Space>x29,<Space>sp<Enter><Tab><Tab><Tab>
	autocmd FileType asm inoremap ,mov mov<Tab><++>,<++><Enter><Tab><Tab><Tab>
	autocmd FileType asm inoremap ,add add<Tab><++>,<++>,<++><Enter><Tab><Tab><Tab>
