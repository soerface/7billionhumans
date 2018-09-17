-- 7 Billion Humans (2053) --
-- 34: Seek and Destroy 1 --

-- Author: ansvonwa
-- Size: 14
-- Speed: 17
-- Speed Tests: 16, 17, 16, 17, 16, 17, 17, 17, 17

mem1 = nearest datacube
step mem1
a:
step n
step n
if c < mem1 or
 s < mem1:
	if c < mem1:
		mem1 = set c
	endif
	if s < mem1:
		mem1 = set s
	endif
endif
if n != wall:
	jump a
endif
pickup mem1
mem1 = nearest shredder
giveto mem1


