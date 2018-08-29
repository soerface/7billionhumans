-- 7 Billion Humans (2053) --
-- 13: Injection Sites 2 --

-- Target Size: 10
-- Size: 10
-- Target Speed: 55
-- Speed: 232

pickup s
a:
if c != datacube and
 w != datacube and
 e != datacube:
	step w
endif
if w == wall or
 e == wall:
	step s
endif
if w == datacube and
 c != datacube:
	drop
endif
if c == datacube or
 w == datacube:
	step e
endif
jump a
