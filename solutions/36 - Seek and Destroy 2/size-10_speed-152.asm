-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Author: ansvonwa
-- Size: 10
-- Speed: 152
-- Speed Tests: 151, 152, 152
-- Success Rate: 51/75

a:
mem1 = set 99
b:
step n
if c < mem1:
	mem1 = set c
endif
if n != wall:
	jump b
endif
pickup mem1
mem1 = nearest shredder
giveto mem1
jump a


