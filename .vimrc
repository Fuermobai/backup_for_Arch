set mouse=a
set t_Co=256
set nocompatible
set completeopt=longest,menu
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

Plugin 'Valloric/YouCompleteMe'

let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_python_binary_path = '/usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax=1	
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_key_invoke_completion ='<C-a>'
let g:ycm_autoclose_preview_window_after_completion=0
let g:Ycm_autoclose_preview_window_after_insertion=1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>




Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
let g:jedi#completions_command = "<C-A>"
"Plugin ''
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"
"function! g:UltiSnips_Complete()
"    call UltiSnips#ExpandSnippet()
"    if g:ulti_expand_res == 0
"        if pumvisible()
"            return "\<C-n>"
"        else
"            call UltiSnips#JumpForwards()
"            if g:ulti_jump_forwards_res == 0
"               return "\<TAB>"
"            endif
"        endif
"    endif
"    return ""
"endfunction
"
"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"
"" Expand snippet or return
"let g:ulti_expand_res = 1
"function! Ulti_ExpandOrEnter()
"    call UltiSnips#ExpandSnippet()
"    if g:ulti_expand_res
"        return ''
"    else
"        return "\<return>"
"endfunction

function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
"inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>
"inoremap <return> <C-R>=Ulti_ExpandOrEnter()<space>


Plugin 'git://git.wincent.com/command-t.git'

Plugin 'rstacruz/sparkup',{'rtp': 'vim/'}

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on


filetype plugin on
syntax on

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set hls
set is
set showcmd
set foldenable

if version >=603
	set helplang=cn
	set encoding=utf-8
endif

"encoding settings

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8


set autoread
set autowrite
set number
set whichwrap=h,l,<,>,[,]
set showmatch
au BufRead,BufNewFile * setfiletype txt

set foldmethod=marker
autocmd BufWinLeave * silent mkview 
autocmd BufWinEnter * silent loadview

colorscheme cobalt  
map <F2> :NERDTreeToggle<CR>
