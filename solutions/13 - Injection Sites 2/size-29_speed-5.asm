-- 7 Billion Humans (2053) --
-- 13: Injection Sites 2 --

-- Author: ansvonwa
-- Size: 29
-- Speed: 5

step s
pickup c
if e == nothing or
 w == nothing:
	step s
	step s
	step s
	if s == nothing:
		a:
		step se
		step se
		step se
	else:
		step s
		step s
		step s
	endif
	b:
	step se
	c:
	step se
	drop
endif
if e == nothing:
	step s
	jump a
endif
if e == nothing or
 w == nothing:
	step sw
	step sw
	step s
	jump c
endif
step e
step e
step e
jump b


