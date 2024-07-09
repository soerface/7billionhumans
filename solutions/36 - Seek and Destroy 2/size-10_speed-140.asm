-- 7 Billion Humans (2235) --
-- 36: Seek and Destroy 2 --

-- Author: XZTDean
-- Size: 10
-- Speed: 140

mem2 = nearest shredder
a:
mem1 = set 99
b:
step n
if n == wall:
	pickup mem1
	giveto mem2
	jump a
endif
if mem1 >= c:
	mem1 = nearest datacube
endif
jump b


