-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Target Size: 10
-- Size: 12
-- Target Speed: 145
-- Speed: 136

mem2 = nearest shredder
a:
mem1 = set 99
step n
b:
c:
step n
if c <= mem1 and
 c == datacube:
	mem1 = set c
	jump c
endif
if n != wall:
	jump b
endif
pickup mem1
giveto mem2
jump a