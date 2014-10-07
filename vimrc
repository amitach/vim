set nocompatible
set encoding=utf8
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
runtime! macros/matchit.vim
Plugin 'szw/vim-tags'
Bundle 'gmarik/vundle'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/command-t'
Bundle 'scrooloose/nerdtree'
Bundle 'flazz/vim-colorschemes'
Bundle 'valloric/youcompleteme'
Plugin 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "tpope/vim-dispatch"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-surround"
Bundle "godlygeek/tabular"
Bundle "tpope/vim-unimpaired"
Bundle 'mileszs/ack.vim'
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nu
set noswapfile
set hidden
set cursorline
set ignorecase
set incsearch
let mapleader= ","

filetype plugin indent on     " required! 
syntax on
set backspace=indent,eol,start
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
cmap w!! %!sudo tee > /dev/null %
set background=light
colorscheme solarized
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" if you use Vundle, load plugins:
Bundle 'ervandew/supertab'
Plugin 'thoughtbot/vim-rspec'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:rspec_command = "!rspec --drb {spec}"
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
set tags=./tags,tags;$HOME"
set diffopt+=vertical
"Nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p


"============= FROM VIMCASTS ========="
"hortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"% to bounce from do to end etc.




map <Leader>v  :so /Users/zoomcar/.vimrc<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <S-F7> :NERDTreeClose<CR>


