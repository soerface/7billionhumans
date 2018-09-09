-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Author: tiansh
-- Size: 8
-- Speed: 162

mem2 = nearest shredder
a:
step n
if c <= mem1 or
 mem1 != datacube:
	mem1 = set c
endif
if n == wall:
	pickup mem1
	giveto mem2
endif
jump a


