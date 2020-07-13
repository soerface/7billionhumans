-- 7 Billion Humans (2145) --
-- 63: Defrag Disordered --

-- Author: 68erDirk
-- Size: 17
-- Speed: 47

a:
mem3 = nearest datacube
pickup mem3
b:
if n != hole:
	step n
	jump b
endif
c:
if myitem == datacube:
	if w == nothing:
		step w
	else:
		if e == nothing:
			step e
		endif
	endif
	if c == nothing:
		drop
	endif
endif
if s != hole:
	step s
	jump c
endif
jump a


