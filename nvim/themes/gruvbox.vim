if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

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

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
