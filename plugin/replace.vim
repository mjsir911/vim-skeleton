if !exists('g:skeleton_replacements')
	let g:skeleton_replacements = {}
endif

function! g:skeleton_replacements.FILENAME()
	return expand("%:t")
endfunction

function! g:skeleton_replacements.BASENAME()
	return expand("%:t:r")
endfunction

function! g:skeleton_replacements.DATE()
	return strftime("%a, %d, %b, %Y")
endfunction

function! g:skeleton_replacements.YEAR()
	return strftime("%Y")
endfunction

function! g:skeleton_replacements.AUTHOR()
	return system("git config --get user.name")
endfunction

function! g:skeleton_replacements.EMAIL()
	return system("git config --get user.email")
endfunction
