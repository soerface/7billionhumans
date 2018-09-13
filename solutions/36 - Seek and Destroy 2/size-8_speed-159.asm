-- 7 Billion Humans (2087) --
-- 36: Seek and Destroy 2 --

-- Author: landfillbaby
-- Size: 8
-- Speed: 159

mem2 = nearest shredder
a:
step n
if n <= mem1 or
 mem1 != datacube:
	mem1 = set n
endif
if n == wall:
	pickup mem1
	giveto mem2
endif
jump a
