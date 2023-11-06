-- 7 Billion Humans (2056) --
-- 13: Injection Sites 2 --

-- Author: ansvonwa
-- Size: 9
-- Speed: 201

pickup s
a:
if e == wall or
 w == wall:
	step s
endif
if w == datacube or
 c == datacube:
	drop
	step e
else:
	step w
endif
jump a


