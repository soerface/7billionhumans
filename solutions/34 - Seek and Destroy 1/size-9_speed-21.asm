-- 7 Billion Humans (2053) --
-- 34: Seek and Destroy 1 --

-- Author: Nantor
-- Size: 9
-- Speed: 21
-- Speed Tests: 21

-- 7 Billion Humans (2235) --
-- 34: Suchen & Schreddern 1 --

mem2 = nearest shredder
step n
a:
step n
if n == datacube and
 n < mem1 or
 mem1 != datacube and
 n == datacube:
	mem1 = set n
endif
if n != wall:
	jump a
endif
pickup mem1
giveto mem2
