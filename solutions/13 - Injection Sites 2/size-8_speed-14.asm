-- 7 Billion Humans (2087) --
-- 13: Injection Sites 2 --

-- Author: landfillbaby
-- Size: 8
-- Speed: 14

pickup s
a:
if e == worker and
 s == datacube or
 w == worker:
	step se
else:
	step s
endif
if w != datacube or
 c != nothing:
	jump a
endif
drop


