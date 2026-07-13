" 主题
Plug 'sainnhe/everforest'
if !has('nvim')
    call plug#load('everforest')
    colorscheme everforest
    highlight CocPumSearch guibg=#2d353b gui=bold
endif
