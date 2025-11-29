
scriptencoding utf-8

let g:airline#themes#nina_dark#palette = {}

let s:airline_a_normal   = [ '#260f5c' , '#dea3c1' , 'NONE' , 'NONE' ]
let s:airline_b_normal   = [ '#ffffff' , '#46444a' , 'NONE' , 'NONE' ]
let s:airline_c_normal   = [ '#aab3eb' , '#202020' , 'NONE' , 'NONE' ]
let g:airline#themes#nina_dark#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let pal = g:airline#themes#nina_dark#palette
for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
	exe "let pal.".item." = pal.normal"
	for suffix in ['_modified', '_paste']
		exe "let pal.".item.suffix." = pal.normal"
	endfor
endfor
