
"" To install a plugin you need to add the route to the runtimepath or rtp ?? 
set runtimepath+=~/.vim/bundle/nerdtree

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 0 " Change the arrow keys to +/- on diff terminals 
let NERDTreeDirArrows = 0
set encoding=utf-8
" Highlight while search
set incsearch
" Enable Highlight Search
set hlsearch
" Press <leader> Enter to remove search highlights
noremap <silent>  sr <cr> :noh<cr>
" Json Parser
com! JsonParser %!python -m json.tool

set noswapfile "" No sw* files 

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
syntax on 
set background=dark    
" Setting dark mode 
set t_Co=256
"Try the autocomplete thing
filetype plugin indent on
""Status line always on 
:set laststatus=2 
"Set the transparency in vim with terminator
hi Normal guibg=NONE ctermbg=NONE

" Get the cursor line where you left it 

if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Function to not tab when copypasting content 

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
		  set pastetoggle=<Esc>[201~
		    set paste
			  return ""
	  endfunction
	  
"Syntax highlight for vue files like html 
autocmd BufRead,BufNewFile *.vue setfiletype html

"Ctrl remap to change tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


