" dein plugin manager

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('ElmCast/elm-vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('~/.fzf/') 
  call dein#add('junegunn/fzf.vim') " Fuzzy finder
  call dein#add('mattn/emmet-vim')
  call dein#add('sandeepcr529/Buffet.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('talek/obvious-resize')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Tab completion
  call dein#add('zxqfl/tabnine-vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" ********************************************************************
" Key bindings
" ********************************************************************

" Sort
map <C-o> :sort<CR>

" ObviousResize
noremap <silent> <C-h> :ObviousResizeLeft<CR>
noremap <silent> <C-l> :ObviousResizeRight<CR>
noremap <silent> <C-k> :ObviousResizeUp<CR>
noremap <silent> <C-j> :ObviousResizeDown<CR>

" Nerd tree
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-m> :NERDTreeFind<cr>

" Windows
map <C-s> :split<CR>
map <C-x> :vsplit<CR>

" Buffet
map <C-b> :Bufferlist<cr>

" Find files
nnoremap <C-p> :Files<Cr>

" Find in files
nnoremap <C-g> :Rg<Cr>

" ********************************************************************
" Colours
" ********************************************************************
colorscheme jellybeans

" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:>-,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set list                                                    " :set spacevim_listchars
set tabstop=4
set shiftwidth=4 " Number of spaces use by autoindent

" ********************************************************************
" Other random config
" ********************************************************************
set t_Co=256 " 256 color mode in term
set cc=80 " Highlight column at 80
set autoread " ReaLoad a file if was changed outside of Vim
set number " show line number
set ru " Ruler active
