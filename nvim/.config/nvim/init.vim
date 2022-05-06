if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
    silent !curl "https://raw.githubPlugrcontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'hoob3rt/lualine.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug '/home/indeevar/plugins/test_plugin.nvim'
Plug '/home/indeevar/plugins/test_colorscheme.nvim'
Plug 'milisims/nvim-luaref'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

Plug 'SirVer/ultisnips'  
Plug 'honza/vim-snippets'

Plug 'windwp/nvim-autopairs'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rafcamlet/nvim-luapad'

call plug#end()

lua require'vellankiindeevar'

nnoremap ; :
vnoremap ; :

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y y$

tnoremap <Esc> <C-\><C-n><CR>

autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
autocmd TermOpen * startinsert 

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

set autochdir
