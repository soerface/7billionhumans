-- 7 Billion Humans (2056) --
-- 65: Defrag Ordered --

-- Author: 68erDirk
-- Size: 24
-- Speed: 334

a:
if n != hole:
	step n
	jump a
endif
jump b
c:
if e != hole:
	step e
else:
	step sw
	b:
	d:
	step w
	if w != hole:
		jump d
	endif
endif
if c == nothing:
	if myitem == datacube:
		drop
	else:
		mem1 = set 1
	endif
endif
if c == datacube:
	if mem1 == 1:
		pickup c
		mem1 = set 0
		step mem2
	else:
		mem2 = set c
	endif
endif
jump c


