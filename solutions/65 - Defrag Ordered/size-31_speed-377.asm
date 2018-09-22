-- 7 Billion Humans (2144) --
-- 65: Defrag Ordered --

-- Author: soerface
-- Size: 31
-- Speed: 377

a:
step n
if n != hole:
	jump a
endif
b:
if c == nothing:
	mem1 = set 1
else:
	if c == datacube and
	 mem1 == 1:
		pickup c
		c:
		if w == hole:
			step ne
			d:
			step e
			if e != hole:
				jump d
			endif
		else:
			step w
		endif
		if c == datacube:
			mem1 = set 2
			jump e
		endif
		jump c
	endif
endif
e:
f:
if e == hole:
	step sw
	g:
	step w
	if w != hole:
		jump g
	endif
else:
	step e
endif
if mem1 == 2:
	drop
	mem1 = set 0
	jump f
endif
jump b


