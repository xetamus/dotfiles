" ~/.vimrc (configuration file for vim only)

set nocompatible
set shell=/bin/sh

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
      exec 'wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir

" Turn on syntax highlighting
syntax on

" Spacing and Tabs
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2

" Case sensitivity
set ic

" Toggle paste-mode with ctrl+h (any mode)
set pastetoggle=<c-H>

" Buffer magic
set hidden
set switchbuf=useopen

" Remap the directions keys to j k l ;
noremap h   <Nop>
noremap j   <Left>
noremap k   <Down>
noremap K   <PageDown>
noremap l   <Up>
noremap L   <PageUp>
noremap ;   <Right>

" Map delete line (dd) to ctrl-d
noremap <c-d>   dd
inoremap <c-d>  <esc> dd i

" Clear the last search regex
noremap H <esc> :let @/ = "" <Enter>

" Replace window commands with vim-wintabs commands
map <C-W>n  :bnext <Enter> 
map <C-W>p  :bprev <Enter>
map <C-W>c  :close <Enter>
map <C-W>q  :q<Enter>

map <C-b> :BuffergatorToggle <Enter>

" Enable scrolling and line numbers
" should also keep from copying line numbers when selecting with mouse
set mouse=a

" Enable line numbers
set number


"""""""""""""""""""""""""
""""Plugin Settings"""""
"""""""""""""""""""""""""
" Vundle!
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Buffergator
Plugin 'jeetsukumaran/vim-buffergator'
" Syntastic
Plugin 'scrooloose/syntastic'
" lightline
Plugin 'itchyny/lightline.vim'
" vim-buftabline
Plugin 'ap/vim-buftabline'

" Colorschemes
Plugin 'whatyouhide/gotham'
Plugin 'kossnocorp/up.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'gregsexton/Muon'
Plugin 'Lokaltog/vim-distinguished'

"
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end Vundle

" lightline settings
set laststatus=2
" Uncomment after powerline fonts are installed
"let g:lightline = {
"  \ 'component': {
"  \    'readonly': '%{&readonly?"":""}',
"  \ },
"  \ 'separator': { 'left': '', 'right': '' },
"  \ 'subseparator': { 'left': '', 'right': '' }
"\ } " make it look like powerline

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" End Plugin Config



" Color stuff
if ( $TERM == 'xterm-256color' )
    set t_Co=256
endif
colorscheme gotham256

" ~/.vimrc ends here
