set path+=**

set wildmode=longest,list,full
set wildmenu

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

"  TODO: init.vim >> init.lua ( comming soon )

call plug#begin('~/.vim/plugged')

Plug 'hoob3rt/lualine.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/harpoon'

Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'

Plug 'szw/vim-maximizer'
Plug 'mbbill/undotree'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'airblade/vim-rooter'

Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

Plug 'folke/todo-comments.nvim'

Plug 'Olical/aniseed', { 'tag': 'v3.19.0' }
Plug 'Olical/fennel.vim'

call plug#end()

let g:aniseed#env = v:true

lua require("vellankiindeevar")

let mapleader = " "


tnoremap <Esc> <C-\><C-n><CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <leader>s :so ~/.config/nvim/init.vim<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" -----------------------
"  some great keymaps
"  ----------------------
nnoremap ; :
vnoremap ; :

nnoremap <leader>d :bdelete<CR>

" paste the last yanked not deleted
nnoremap ,p "0p
nnoremap ,P "0P

inoremap <C-c> <esc>

" -----------------
" Python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

augroup vellankiindeevar
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

