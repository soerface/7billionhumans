-- 7 Billion Humans (2234) --
-- 11: Injection Sites 1 --

-- Author: landfillbaby
-- Size: 18
-- Speed: 5

pickup s
step s
step s
step s
step s
step s
if n == nothing or
 s == nothing:
	if n == nothing:
		step n
		jump a
	endif
else:
	step s
	step s
	if s == datacube:
		step s
		step s
	endif
endif
step s
a:
drop


