-- 7 Billion Humans (2144) --
-- 65: Defrag Ordered --

-- Author: soerface
-- Size: 41
-- Speed: 314

step n
step n
step n
step n
step n
step n
step n
a:
if c == nothing:
	mem1 = set 1
else:
	if c == datacube and
	 mem1 == 1:
		pickup c
		b:
		if w == hole:
			step ne
			step e
			step e
			step e
			step e
			step e
			step e
		else:
			step w
		endif
		if c == datacube:
			mem1 = set 2
			jump c
		endif
		jump b
	endif
endif
c:
d:
if e == hole:
	step sw
	step w
	step w
	step w
	step w
	step w
	step w
else:
	step e
endif
if mem1 == 2:
	drop
	mem1 = set 0
	jump d
endif
jump a


