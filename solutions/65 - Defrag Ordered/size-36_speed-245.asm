-- 7 Billion Humans (2056) --
-- 65: Defrag Ordered --

-- Author: 68erDirk
-- Size: 36
-- Speed: 245

step nw
a:
if w != hole:
	step w
	jump a
endif
step n
step n
step n
step n
step n
step n
b:
c:
if c == nothing:
	if myitem == datacube:
		drop
		mem2 = set c
	else:
		mem1 = set 1
	endif
else:
	if c == datacube:
		if mem1 == 1:
			pickup c
			mem1 = set 0
			step mem2
			jump b
		else:
			mem2 = set c
		endif
	endif
endif
if e != hole:
	step e
else:
	step sw
	step w
	step w
	step w
	step w
	step w
	step w
endif
jump c


