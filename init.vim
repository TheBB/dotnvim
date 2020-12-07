let mapleader=" "

function! s:showCommands()
    let start = line("v")
    let end = line(".")
    call VSCodeNotifyRange("workbench.action.showCommands", start, end, 0)
endfunction

function! s:editVimrc()
    call VSCodeExtensionNotify("open-file", $MYVIMRC, 0)
endfunction

xnoremap <silent> <leader><leader> <Cmd>call <SID>showCommands()<CR>
nnoremap <silent> <leader><leader> <Cmd>call <SID>showCommands()<CR>

nnoremap <silent> <leader>fs <Cmd>call VSCodeNotify("workbench.action.files.save")<CR>
nnoremap <silent> <leader>pf <Cmd>call VSCodeNotify("workbench.action.quickOpen")<CR>

nnoremap <silent> <leader>hv <Cmd>call <SID>editVimrc()<CR>
nnoremap <silent> <leader>hV <Cmd>so $MYVIMRC<CR>
