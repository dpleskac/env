set nocompatible    " Non vi mode
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent		" remove while copying with mouse"
set cinoptions+=:0  " During indent place case statement in same column as switch!
autocmd BufEnter *.c,*.h set formatoptions=croq cindent textwidth=0


set incsearch       " Show search pattern while typing
set shortmess=aI    " Short messages [RO], [+], etc.

syntax enable
colorscheme morning

if has("cscope")
	if filereadable(expand("$CWT/cscope.out"))
		cscope add $CWT/cscope.out
	endif

	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
	nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

	set timeoutlen=2000
endif

if filereadable(expand("$CWT/tags"))
	set tags=$CWT/tags
endif

