-- 7 Billion Humans (2087) --
-- 34: Seek and Destroy 1 --

-- Author: landfillbaby
-- Size: 8
-- Speed: 22

mem2 = nearest shredder
a:
step n
if c < mem1 or
 mem1 != datacube and
 c == datacube:
	mem1 = set c
endif
if n != wall:
	jump a
endif
pickup mem1
giveto mem2


