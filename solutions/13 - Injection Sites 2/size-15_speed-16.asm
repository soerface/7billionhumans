-- 7 Billion Humans (2215) --
-- 13: Injection Sites 2 --
-- author nkaabi --
-- size 15, speed 16 --

pickup s
a:
if w == worker:
	step e
	jump a
endif
step s
b:
step s
step s
if c == nothing or
 w == nothing or
 e == nothing:
	if w == nothing:
		step w
	else:
		if e == nothing:
			step e
		endif
	endif
	drop
endif
jump b
