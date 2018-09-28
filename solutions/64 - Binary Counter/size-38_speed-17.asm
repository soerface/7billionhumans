-- 7 Billion Humans (2145) --
-- 64: Binary Counter --

-- Author: landfillbaby
-- Size: 38
-- Speed: 17

step s
step s
if e == nothing and
 w == worker:
	pickup n
	a:
	if c == datacube:
		pickup c
	else:
		drop
	endif
	jump a
endif
if n != datacube:
	b:
	step n
	step s
	jump b
endif
if w == nothing:
	pickup n
	c:
	mem1 = calc mem1 + 1
	if mem1 == 3:
		drop
	endif
	mem2 = set c
	jump c
endif
if ne != datacube:
	pickup n
	drop
	d:
	mem1 = set c
	mem1 = set c
	if c == datacube:
		pickup c
	else:
		drop
	endif
	jump d
endif
pickup n
e:
mem1 = calc 0 + 0
drop
mem1 = calc 0 + 0
mem1 = calc 0 + 0
pickup c
mem1 = calc 0 + 0
jump e