-- 7 Billion Humans (2053) --
-- 34: Seek and Destroy 1 --

-- Target Size: 9
-- Size: 9
-- Target Speed: 21
-- Speed: 22

mem1 = set 99
mem2 = nearest shredder
a:
step n
if c < mem1 and
 c == datacube:
	mem1 = set c
endif
if n != wall:
	jump a
endif
pickup mem1
giveto mem2