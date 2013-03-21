set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

vnoremap < <gv
vnoremap > >gv

set pastetoggle=<leader>v

"Solarized
set t_Co=16
if has("gui_running")
    set t_Co=256
    let g:solarized_termcolors=256
endif

syntax enable
set background=dark
"colorscheme solarized

"FuzzyFinder
nnoremap <silent> ffb :FufBuffer<CR>
nnoremap <silent> fff :FufFile<CR>
nnoremap <silent> ffd :FufDir<CR>
nnoremap <silent> ffj :FufJumpList<CR>

" NERDTree
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

command W w
command WQ wq
command Wq wq
command Q q
