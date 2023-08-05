" --------------------------------------------------------------------------------
" Global configuration and usual nice things...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set splitbelow          " all splits go to bottom of the screen
set termwinsize=10x0    " size of terminal window

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler               " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

" --------------------------------------------------------------------------------
" Plugin configuration, so many plugins...
" --------------------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" Use VIM-Plug instead of Vundle
Plug 'junegunn/vim-plug'

" Vader: tester for vim scripts
Plug 'junegunn/vader.vim'

" WakaTime: The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
" Plug 'wakatime/vim-wakatime'

" EasyAlign: Shorthand notation, fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" VimSlash: provides a set of mappings for enhancing in-buffer search experience in Vim.
Plug 'junegunn/vim-slash'

" TabNine: multi-language predictive code autocomplete tool.
" Stopped using because it autocompleted waaaay too much
" set rtp+=~/.vim/tabnine-vim

" Stopped using these plugins because I was not using Git inside Vim that much...
" Fugitive: a Git wrapper so awesome, it should be illegal.
" Plug 'tpope/vim-fugitive'
" GitHubDashboard: Browse GitHub events in Vim
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" UltiSnips: the ultimate solution for snippets in Vim.
Plug 'SirVer/ultisnips'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
