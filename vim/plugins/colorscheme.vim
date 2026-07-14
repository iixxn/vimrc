" 主题
Plug 'sainnhe/everforest'
call plug#load('everforest')
colorscheme everforest
if !has('nvim')
    highlight CocPumSearch guibg=#2d353b gui=bold
endif
