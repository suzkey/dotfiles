" === vim-plug setting ===
call plug#begin()
Plug 'morhetz/gruvbox' " theme
Plug 'arcticicestudio/nord-vim' " theme
Plug 'airblade/vim-gitgutter' " git status on sidebar
Plug 'sheerun/vim-polyglot' " language support
Plug 'cohama/lexima.vim' " Complete parenthesis
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'wakatime/vim-wakatime'
Plug 'hugolgst/vimsence' " Discord RPC
Plug 'itchyny/lightline.vim'
Plug 'prabirshrestha/vim-lsp' " language server plugin
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'heavenshell/vim-textlint'
Plug 'ianding1/leetcode.vim'
call plug#end()

" === vim-lsp configurations ===
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_remove_duplicates = 1
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1

" === leetcode customization ===
let g:leetcode_solution_filetype = 'rust'
let g:leetcode_browser = 'firefox'

" lightline configuration
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

" Rust auto formatting when saved
" let g:rustfmt_autosave = 1

" ale optional setting
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }
let g:ale_statusline_format = ['✘ %d', '⚠ %d', 'NE']
let g:ale_fix_on_save = 1

let g:vimsence_editing_state = ':/'
