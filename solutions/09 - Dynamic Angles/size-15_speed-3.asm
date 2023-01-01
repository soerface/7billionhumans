-- 7 Billion Humans (2235) --
-- 9: Dynamic Angles --

-- Author: landfillbaby
-- Size: 15
-- Speed: 3

pickup s
if e == nothing:
	step s
	jump a
endif
if e == nothing:
	a:
	step s
	jump b
endif
if e == nothing:
	b:
	step s
	jump c
endif
if e == nothing:
	c:
	step s
endif
step s
step s
drop


