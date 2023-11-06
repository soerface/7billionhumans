-- 7 Billion Humans (2053) --
-- 20: Reverse Line --

-- Author: soerface
-- Size: 9
-- Speed: 11

pickup s
a:
if sw != hole:
	step w
	jump a
endif
step s
b:
if e != datacube and
 e != hole:
	step e
	jump b
endif
drop


