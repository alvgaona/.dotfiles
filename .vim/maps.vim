nnoremap <Leader>c :noh<CR>

" cursor
inoremap <C-A> <Home>
inoremap <C-E> <End>
nnoremap <C-A> <Home>
nnoremap <C-E> <End>

" text
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" tmux navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" nerdtree
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" splits
nmap <silent> <C-i> <C-W>k
nmap <silent> <C-k> <C-W>j
nmap <silent> <C-j> <C-W>h
nmap <silent> <C-l> <C-W>l

" tabs
map <C-Left> :tabprevious<cr>
map <C-Right> :tabnext<cr>

" fzf
nmap <silent> <C-o> :Files<CR>
nmap <silent> <C-p> :Rg<CR>

" Use <c-space> to trigger completion.
"if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
"else
  "inoremap <silent><expr> <c-space> coc#refresh()
"endif

set splitright
