" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" vim-nerdtree-syntax-highlight
let g:NERDTreeLimitedSyntax = 1

" nerdtree
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=0

let g:javascript_plugin_flow = 1

" kite
let g:kite_supported_languages = ['*']

" tmux navigator
let g:tmux_navigator_no_mappings = 1

" coc
autocmd FileType scss setl iskeyword+=@-@

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Highlight symbol under cursor on CursorHold

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  let height = float2nr((&lines - 3) / 2)
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)
  let row = float2nr((&lines - height) / 2)
  let opts = {
	\ 'relative': 'editor',
	\ 'row': row,
	\ 'col': col,
	\ 'width': width,
        \ 'height': height,
	\}
  call nvim_open_win(buf, v:true, opts)
endfunction

function! SearchPatternInFile(pattern)
    "" Save cursor position.
    let save_cursor = getcurpos()

    "" Set cursor position to beginning of file.
    call cursor(0, 0)

    "" Search for the string 'hello' with a flag c.  The c flag means that a
    "" match at the cursor position will be accepted.
    let search_result = search(a:pattern, "c")

    "" Set the cursor back at the saved position.  The setpos function was
    "" used here because the return value of getcurpos can be used directly
    "" with it, unlike the cursor function.
    call setpos('.', save_cursor)

    "" If the search function didn't find the pattern, it will have
    "" returned 0, thus it wasn't found.  Any other number means that an instance
    "" has been found.
    return search_result
endfunction

" Indent Blankline

let g:indent_blankline_show_current_context = v:true
let g:indent_blankline_show_current_context_start = v:true
set list listchars=tab:→\ ,space:⋅,trail:•,nbsp:␣,extends:▶,precedes:◀
