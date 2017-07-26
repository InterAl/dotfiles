syn keyword es6Special async await yield
syn keyword nodeOperators exports require
syn match decorators /@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>/
"}}}

hi def link es6Special Special
hi def link decorators Special
hi def link nodeOperators Operator
