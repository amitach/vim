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
set wrap
set linebreak
set showbreak=>\
set nu
set noswapfile
set hidden
set cursorline
set ignorecase
set incsearch
set scrolloff=5
set wildmenu
set undofile
"let g:ruby_fold = 1
let mapleader= ","

filetype plugin indent on     " required! 
syntax on
set backspace=indent,eol,start
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
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
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p


"============= FROM VIMCASTS ========="
"hortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"% to bounce from do to end etc.




map <Leader>v  :so /Users/zoomcar/.vimrc<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <S-F7> :NERDTreeClose<CR>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

"set foldlevelstart=0
nnoremap <space> za
vnoremap <space> za

" function! RubyMethodFold(line)
"   let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)

"   for synid in stack
"     if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
"       return 1
"     endif
"   endfor

"   return 0
" endfunction

" set foldexpr=RubyMethodFold(v:lnum)

"set foldmethod=expr
