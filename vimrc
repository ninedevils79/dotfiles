" --- VIMRC ---

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" --- Run Pathogen ---
execute pathogen#infect()

" --- Set the leader ---
let mapleader = ","
let g:mapleader = ","

" --- Color scheme ---

" colorscheme badwolf 
set background=light
colorscheme solarized
let g:airline_powerline_fonts = 1
let g:solarized_termcolors = 256
let g:solarized_termtrans=1

" --- Color scheme ---

syntax enable
set tabstop=4
set expandtab
set showcmd
" set cursorline
set wildmenu
set lazyredraw 
set showmatch
set ruler

set laststatus=2
set noshowmode
set expandtab
set softtabstop=2
set shiftwidth=2
"Let backspace do its thang
set backspace=indent,eol,start

" Handle long lines
set wrap linebreak nolist
" set textwidth=79
set formatoptions=qrnl

" More sets
set clipboard=unnamed 
" set listchars=tab:▸\ ,trail:▫

" Sayonara. Will check it out some day.
" nnoremap <silent> <leader>q :Sayonara<CR>


" --- Useful code from More Instantly Better Vim ---

"========[ Make the 81st column stand out ]==============

    highlight ColorColumn ctermbg=magenta

"========[ Make the whole column stand out ]============

"    set colorcolumn=81

"========[ Make just the character on the 81st column stand out ]=========

    call matchadd('ColorColumn','\%81v', 100)

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list


"=====[ Highlight matches when jumping to next ]=============

    " This rewires n and N to do the highlighing...
    nnoremap <silent> n   n:call HLNext(0.4)<cr>
    nnoremap <silent> N   N:call HLNext(0.4)<cr>


    " EITHER blink the line containing the match...
    function! HLNext (blinktime)
        set invcursorline
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        set invcursorline
        redraw
    endfunction

"=====[ Highlight matches when jumping to next ]=============


" Two RPM's that you need to install 
" $ sudo dnf install vim-nerdtree.noarch vim-fugitive.noarch

" --- NERDTree ---
"NERDTree mapping to Ctrl-N
nnoremap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

" Start NERDTree when Vim starts
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" --- NERDTree ---

" --- VIM Airline
" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

" cd ~/.vim
" git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
:helptags ~/.vim/bundle/ctrlp.vim/doc

" Key bindings for Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Mouse
if has('mouse')
  set mouse=a
endif

" Fast saving
nmap <leader>w :w!<cr>

" Center the screen
nnoremap <space> zz

" ----------- File type settings -------
au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.yml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.py setlocal expandtab ts=8 et sw=4 sts=4

"2 spaces in yaml and package.json
augroup yaml
	autocmd!
	autocmd Filetype yaml setlocal tabstop=2 expandtab shiftwidth=2
	autocmd BufNewFile,BufRead,BufWrite package.json setlocal tabstop=2 expandtab shiftwidth=2
augroup END


" -- Syntastic 
" https://github.com/scrooloose/syntastic
" Installation with Pathogen 
" cd ~/.vim/bundle && git clone --depth=1 https://github.com/scrooloose/syntastic.git

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ==================== Fugitive ====================
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>

