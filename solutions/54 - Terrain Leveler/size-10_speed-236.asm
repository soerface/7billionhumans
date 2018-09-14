-- 7 Billion Humans (2056) --
-- 54: Terrain Leveler --

-- Author: tiansh
-- Size: 10
-- Speed: 236

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


