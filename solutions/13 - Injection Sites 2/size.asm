-- 7 Billion Humans (2056) --
-- 13: Injection Sites 2 --

-- Target Size: 10
-- Size: 9
-- Target Speed: 55
-- Speed: 198

pickup s
a:
if e == datacube or
 c == datacube:
	step e
	drop
else:
	step w
endif
if e == wall or
 w == wall:
	step s
endif
jump a