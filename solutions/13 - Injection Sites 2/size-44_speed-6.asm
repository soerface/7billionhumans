-- 7 Billion Humans (2053) --
-- 13: Injection Sites 2 --

-- Author: soerface
-- Size: 44
-- Speed: 6

pickup s
step s
if w == worker and
 e == nothing:
	step se
	step se
	step se
	step se
	step s
	step s
	drop
endif
if w == worker and
 e == nothing:
	step se
	step se
	step se
	step s
	step s
	step s
	step s
	step s
	drop
endif
if w == worker and
 e == nothing:
	step se
	step se
	step s
	step s
	step s
	step s
	step s
	step s
	drop
endif
if w == worker and
 e == nothing:
	step se
	step se
	step e
	step e
	step e
	drop
endif
step s
step s
step s
step s
if e == nothing:
	step e
endif
drop


