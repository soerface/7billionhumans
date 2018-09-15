-- 7 Billion Humans (2056) --
-- 54: Terrain Leveler --

-- Author: tiansh
-- Size: 10
-- Speed: 255
-- Speed Tests: 236, 247, 262, 251, 275, 260, 277, 273, 244, 222

a:
step n
if n == wall:
	mem1 = calc mem1 + 1
	b:
	if s != wall:
		step s
		pickup c
		write mem1
		drop
		jump b
	endif
endif
jump a


