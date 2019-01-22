set tabstop=2
set background=dark

au BufReadPost *.json set syntax=javascript

autocmd Filetype python set tabstop=4 shiftwidth=4 expandtab
autocmd Filetype cpp set tabstop=4 shiftwidth=4 expandtab
autocmd Filetype java set tabstop=4 shiftwidth=4

vmap <C-h> <Home>
vmap <C-j> <PageDown>
vmap <C-k> <PageUp>
vmap <C-l> <End>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
nmap <C-h> <Home>
nmap <C-j> <PageDown>
nmap <C-k> <PageUp>
nmap <C-l> <End>

noremap <C-n> :set invnumber<CR>

highlight ExtraWhiteSpace ctermbg=Red guibg=Red
match ExtraWhiteSpace /^\s\+$\|\s\s\+$\|^\t\+\|^ \+\zs\t\+/

vnoremap <silent>  # :s#^#\##<cr>:noh<cr> 
vnoremap <silent> -# :s#^\###<cr>:noh<cr>
vnoremap <silent>  / :s#^#\/\/#<cr>:noh<cr>
vnoremap <silent> -/ :s#^\//##<cr>:noh<cr>

vnoremap ?? y?<C-r>"<cr>
vnoremap // y/<c-r>"<cr>

cnoremap w!! w !sudo tee > /dev/null % <cr>
"cnoremap xml !xmllint --noout -.<cr>
