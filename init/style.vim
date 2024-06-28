" 显示行号
set number

" 总是显示侧边栏（用于显示 mark/gitdiff/诊断信息）
set signcolumn=yes

" 总是显示标签栏
set showtabline=2

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 允许 256 色
set t_Co=256

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" 终端设置，隐藏行号和侧边栏
if has('terminal') && exists(':terminal') == 2
    if exists('##TerminalOpen')
        augroup VimUnixTerminalGroup
            au! 
            au TerminalOpen * setlocal nonumber signcolumn=no
        augroup END
    endif
endif

" quickfix 设置，隐藏行号
augroup VimInitStyle
    au!
    au FileType qf setlocal nonumber
augroup END
