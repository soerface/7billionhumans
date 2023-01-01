-- 7 Billion Humans (2235) --
-- 13: Injection Sites 2 --

-- Author: landfillbaby
-- Size: 28
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
	else:
		step s
		step sw
	endif
	step se
else:
	if e == nothing:
		step s
		jump a
	endif
	if e == nothing or
	 w == nothing:
		step sw
		step sw
		step s
		jump b
	endif
	step e
	step e
	step e
endif
step se
b:
step se
drop


