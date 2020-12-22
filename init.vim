let mapleader=" "

let s:vscode_path = $HOME . "/.config/Code - Insiders"

function! s:showCommands()
    let start_pt = line("v")
    let end_pt = line(".")
    call VSCodeNotifyRange("workbench.action.showCommands", start_pt, end_pt, 0)
endfunction

function! s:editVimrc()
    call VSCodeExtensionNotify("open-file", $MYVIMRC, 0)
endfunction

function! s:editSettings()
    call VSCodeExtensionNotify("open-file", s:vscode_path . "/User/settings.json", 0)
endfunction

function! s:editKeybindings()
    call VSCodeExtensionNotify("open-file", s:vscode_path . "/User/keybindings.json", 0)
endfunction

xnoremap <silent> <leader><leader> <Cmd>call <SID>showCommands()<CR>
nnoremap <silent> <leader><leader> <Cmd>call <SID>showCommands()<CR>

nnoremap <silent> <leader>fs <Cmd>call VSCodeNotify("workbench.action.files.save")<CR>
nnoremap <silent> <leader>pf <Cmd>call VSCodeNotify("workbench.action.quickOpen")<CR>
nnoremap <silent> <leader>fr <Cmd>call VSCodeNotify("workbench.action.openRecent")<CR>
nnoremap <silent> <leader>pp <Cmd>call VSCodeNotify("workbench.action.openRecent")<CR>

nnoremap <silent> <leader>hv <Cmd>call <SID>editVimrc()<CR>
nnoremap <silent> <leader>hV <Cmd>source $MYVIMRC<CR>
nnoremap <silent> <leader>hs <Cmd>call <SID>editSettings()<CR>
nnoremap <silent> <leader>hk <Cmd>call <SID>editKeybindings()<CR>
