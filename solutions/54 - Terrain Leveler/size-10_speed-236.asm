-- 7 Billion Humans (2056) --
-- 54: Terrain Leveler --

-- Author: tiansh
-- Author: ansvonwa
-- Size: 10
-- Speed: 180
-- Speed Tests: 179, 198, 181, 182, 161, 171, 185

a:
if c == nothing:
	mem1 = calc mem1 + 1
	b:
	if n != wall:
		step n
		pickup c
		write mem1
		drop
		jump b
	endif
endif
step s
jump a


