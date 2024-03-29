" ~/.vimrc (configuration file for vim only)

set nocompatible
set shell=/bin/sh

" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

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
set pastetoggle=<c-Y>

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
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'
" Buffergator
Plug 'jeetsukumaran/vim-buffergator'
" Syntastic
Plug 'scrooloose/syntastic'
" lightline
Plug 'itchyny/lightline.vim'
" vim-buftabline
Plug 'ap/vim-buftabline'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Colorschemes
Plug 'whatyouhide/gotham'
Plug 'gregsexton/Muon'
Plug 'w0ng/vim-hybrid'
Plug 'srcery-colors/srcery-vim'
Plug 'patstockwell/vim-monokai-tasty'

" Go!
"Plug 'fatih/vim-go'
"let g:syntastic_go_checkers = ['go']
"let g:go_fmt_command = "goimports"
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_types = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"au BufReadPost *.go set syntax=go


"
" plugin from http://vim-scripts.org/vim/scripts.html
"Plug 'L9'
" Git plugin not hosted on GitHub
"Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plug 'user/L9', {'name': 'newL9'}

" Docker
"Plug 'ekalinin/Dockerfile.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" end

" lightline settings
set laststatus=2
" Uncomment after powerline fonts are installed
let g:lightline = {
  \ 'component': {
  \    'readonly': '%{&readonly?"":""}',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \} " make it look like powerline

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-I> :SyntasticToggleMode <Enter>
highlight SyntasticErrorLine guibg=#2f0000

" End Plugin Config



" Color stuff
set t_Co=256
set background=dark
colorscheme base16-neko

set viminfo='20,<1000

" ~/.vimrc ends here
"
