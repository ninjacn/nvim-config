scriptencoding = 'utf-8'

call plug#begin('~/.nvim/plugged')
Plug 'fatih/vim-go', {'tag': '*'}
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'vim-autoformat/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'alvan/vim-php-manual'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'voldikss/vim-translator'
Plug 'preservim/vim-markdown'
Plug 'mhinz/vim-startify'
call plug#end()

"airline
let g:airline_theme = 'gruvbox'

"indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"NERDTree
let g:NERDTreeShowHidden = 1
nnoremap <Leader>d :NERDTreeToggle<CR>

"Tagbar
nnoremap <Leader>s :TagbarToggle<CR>

"vim-autoformat
"need Python3
au BufWrite * :Autoformat
let g:python3_host_prog="/usr/local/opt/python@3.7/bin/python3"
"disable autoformat on php files
autocmd FileType php let b:autoformat_autoindent = 0
autocmd FileType php let b:autoformat_retab = 0
autocmd FileType php let b:autoformat_remove_trailing_whitespace = 0

"vim-go
let g:go_disable_autoinstall = 0
"Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_diagnostics_level = 2
let g:go_doc_max_height = 80
let g:go_doc_balloon = 1
let g:go_doc_popup_window = 1
let g:go_get_update = 0
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_xml_xmllint_args = "--nowarning"

"let g:syntastic_go_checkers = ['golint', 'go vet', 'errcheck']
let g:syntastic_go_checkers = ['go', 'gofmt']
"let g:syntastic_go_checkers = ['staticcheck', 'golint', 'govet', 'errcheck']

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php']
let g:syntastic_php_phpcs_args = "--standard=PSR1"
let g:syntastic_mode_map={ 'mode': 'active',
            \ 'active_filetypes': ['go', 'php'],
            \ 'passive_filetypes': ['html','xhtml'] }

let g:syntastic_python_checkers = []

"deoplete
let g:deoplete#enable_at_startup = 1

"ctrlp
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>

"vim-translator
nnoremap <Leader>t :TranslateW<CR>
let g:translator_default_engines = ['bing','haici']

let g:startify_custom_header =
            \ startify#pad(split(system('figlet -w 100 2022'), '\n'))
