-- 7 Billion Humans (2056) --
-- 13: Injection Sites 2 --

-- Target Size: 10
-- Size: 9
-- Target Speed: 55
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