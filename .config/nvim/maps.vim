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
"nnoremap <C-f> :NERDTreeFind<CR>
"nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <silent> <C-f> :NvimTreeFindFile<CR>

" splits
nmap <silent> <C-i> <C-W>k
nmap <silent> <C-k> <C-W>j
nmap <silent> <C-j> <C-W>h
nmap <silent> <C-l> <C-W>l

" fzf
"nmap <silent> <C-o> :Files<CR>
"nmap <silent> <C-p> :Rg<CR>

" telescope
nnoremap <silent><C-o> <cmd>Telescope find_files<cr>
nnoremap <leader><C-p> <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Use <c-space> to trigger completion.
"if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
"else
  "inoremap <silent><expr> <c-space> coc#refresh()
"endif

set splitright
