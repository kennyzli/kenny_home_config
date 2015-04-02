syntax on

set nocompatible               " be iMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
""set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'snippetsEmu'
Bundle 'tpope/vim-fugitive'
Bundle 'junegunn/vim-easy-align'
Bundle 'tpope/vim-pathogen'
Bundle 'klen/python-mode'
Bundle 'altercation/vim-colors-solarized'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'justinmk/vim-gtfo'
Bundle 'Keithbsmiley/investigate.vim'
" Bundle 'matze/vim-move'
Bundle 'qstrahl/vim-matchmaker'
" Bundle 'goldfeld/vim-seek'
Bundle 'mhinz/vim-startify'
Bundle 'jnwhiteh/vim-golang'
Bundle 'vim-markdown-folding'
Bundle 'derekwyatt/vim-scala'
Bundle 'neocomplcache'
""Bundle 'vim-multiple-cursors'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-fakeclip'
""Bundle 'vim-flake8'
Bundle 'honza/vim-snippets'
""Bundle 'rubycomplete.vim'
Bundle 'fakeclip'
Bundle 'wellle/targets.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'matze/vim-move'
" vim-scripts repos
Bundle 'L9'
"Bundle 'snippetsEmu'
Bundle 'vimcommander'
""Bundle 'javacomplete'
Bundle 'AutoClose'
Bundle 'SirVer/ultisnips'
"Bundle 'Lokaltog/powerline'
Bundle 'The-NERD-tree'
Bundle 'FuzzyFinder'
Bundle 'FindInNERDTree'
Bundle 'NERD_Tree-and-ack'
Bundle 'OmniCppComplete'
Bundle 'mileszs/ack.vim'
Bundle 'vim-misc'
Bundle 'surround.vim'
"Bundle 'vim-fugitive'
""Bundle 'vim-rails'
Bundle 'easytags.vim'
Bundle 'vim-gitgutter'
Bundle 'Tabular'
Bundle 'ag.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'tpope/vim-vinegar'

""Bundle 'xml.vim'

" non github repos
Bundle 'wincent/Command-T'

:set number
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1 

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

let Tlist_Auto_Highlist_Tag = 1
let Tlist_Use_Right_Window = 1

let Tlist_Auto_Hightlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Display_Prototype = 1
let g:acp_behaviorSnipmateLength = 1
set smartindent
set tabstop=4
set shiftwidth=2
set expandtab
set nocompatible
set hlsearch
inoremap <C-\> <C-x><C-o>
nmap  <F2> :CtrlP<CR>
nmap  <F3> :CommandTBuffer<CR>
nmap  <F1> :NERDTreeFind<CR>
nmap <C-c> :quit<CR>
let g:NERDTreeWinSize=35
let g:NERDTreeWinPos = "left"


nnoremap <silent> <F10> :cal VimCommanderToggle()<CR>
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

noremap ] :bprevious<CR>
noremap [ :bNext<CR>


let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_mrufile_exclude = '\v\~$|\.(bak|sw[po])$|^(\/\/|\\\\|\/mnt\/)'


""nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
""nnoremap <silent> <C-l><C-p> :FufFileWithFullCwd<CR>
""nnoremap <silent> <C-l>p     :FufFile<CR>
""nnoremap <silent> <C-l><C-d> :FufDirWithCurrentBufferDir<CR>
""nnoremap <silent> <C-l>d     :FufDirWithFullCwd<CR>
""nnoremap <silent> <C-l>D     :FufDir<CR>
nnoremap <silent> <C-r>      :FufMruFile<CR>
""nnoremap <silent> <C-l><C-t> :FufTag<CR>
""nnoremap <silent> <C-l>t     :FufTag!<CR>
""noremap  <silent> g]         :FufTagWithCursorWord!<CR>
""nnoremap <silent> <C-l><C-l> :FufTaggedFile<CR>
""nnoremap <silent> <C-l><C-j> :FufJumpList<CR>
""nnoremap <silent> <C-l><C-g> :FufChangeList<CR>
""nnoremap <silent> <C-l><C-q> :FufQuickfix<CR>
""nnoremap <silent> <C-l><C-l> :FufLine<CR>
"nnoremap <silent> <C-l><C-b> :FufAddBookmark<CR>
"vnoremap <silent> <C-l><C-b> :FufAddBookmarkAsSelectedText<CR>
""nnoremap <silent> <C-l><C-e> :FufEditInfo<CR>
""nnoremap <silent> <C-l><C-r> :FufRenewCache<CR>

nmap <F8> :TagbarToggle<CR>

set ofu=syntaxcomplete#Complete
au BufRead,BufNewFile *.xsjs set filetype=javascript
"vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
"pathogen enable "
""execute pathogen#infect()

"neoComplete setting
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3"

if !exists('g:neocomplcache_omni_patterns')
      let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'"

let NERDTreeShowBookmarks=1
let g:Powerline_symbols = 'fancy'

let g:syntastic_javascript_checkers=['jsl']
let g:syntastic_javascript_jsl_args="-process"
let g:syntastic_python_checkers=['pylint -E']

"set list
"set listchars=tab:>-,extends:»,precedes:«,trail:⋯
:highlight CursorLine gui=none guibg=grey10
set cursorline
set incsearch
"set guifont=Courier\ New\ 13



" the backup and folders
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo
set laststatus=2

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

""autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
""let g:EclimCompletionMethod = 'omnifunc'
"set the option to enable the list view 
set cot=menu

set guifont=Source\ Code\ Pro\ for\ Powerline:h14

set encoding=utf-8

set nocompatible
set t_Co=256
set wildignore+=*.o,*.obj,.git,.svn,*.class
filetype on
filetype plugin on

"let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-w>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:easytags_on_cursorhold = 0
let g:matchmaker_enable_startup = 1
let g:EasyMotion_leader_key = '<Leader>' 

"The setup for investigation plugin
""nnoremap <leader>K :call investigate#Investigate()<CR>
let g:investigate_use_dash=1

""vim
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

"folder setting 
nnoremap <Space> za
set foldmethod=syntax
""set foldenable
set foldlevel=10
set list lcs=tab:\|\ 
let g:indentLine_color_term = 239
let g:move_key_modifier = 'C'
nnoremap Q <nop>
"set color schem "
set background=dark
colorscheme solarized 
""let g:rehash256 = 1
set clipboard=unnamed
