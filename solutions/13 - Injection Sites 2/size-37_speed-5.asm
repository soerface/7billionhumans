-- 7 Billion Humans (2053) --
-- 13: Injection Sites 2 --

-- Author: ansvonwa
-- Size: 37
-- Speed: 5

step s
pickup c
if e == nothing or
 w == nothing:
	step s
	step s
	step s
	if s == nothing:
		step se
		step se
		step se
	else:
		step s
		step s
		step s
	endif
	step se
	step se
	drop
endif
if e == nothing:
	step se
	step se
	step se
	step se
	step se
	step s
	drop
endif
if e == nothing or
 w == nothing:
	step s
	step s
	step s
	step sw
	drop
endif
step se
step e
step e
step e
step se
drop


