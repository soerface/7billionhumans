-- 7 Billion Humans (2087) --
-- 36: Seek and Destroy 2 --

-- Author: landfillbaby
-- Size: 12
-- Speed: 105

mem4 = nearest shredder
a:
mem1 = nearest shredder
b:
c:
step n
mem2 = set n
if mem1 != datacube or
 mem1 > mem2:
	mem1 = set mem2
	jump c
endif
if mem2 != wall:
	jump b
endif
pickup mem1
giveto mem4
jump a


