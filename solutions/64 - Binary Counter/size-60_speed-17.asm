-- 7 Billion Humans (2144) --
-- 64: Binary Counter --

-- Author: soerface
-- Size: 60
-- Speed: 17

if e == nothing and
 w == worker:
	step s
	step s
	pickup n
	a:
	mem1 = set c
	drop
	mem1 = set c
	pickup c
	jump a
endif
if w == datacube:
	step s
	b:
	step s
	step n
	jump b
endif
if w == nothing:
	step s
	step s
	pickup n
	mem1 = calc 0 + 0
	mem1 = calc 0 + 0
	mem1 = calc 0 + 0
	mem1 = set c
	mem1 = set c
	drop
endif
if e == nothing:
	step s
	step s
	pickup n
	jump c
	d:
	mem1 = set c
	mem1 = set c
	mem1 = set c
	c:
	drop
	mem1 = set c
	mem1 = set c
	mem1 = set c
	pickup c
	jump d
else:
	step s
	step s
	pickup n
	jump e
	f:
	mem1 = set c
	mem1 = set c
	mem1 = set c
	e:
	mem1 = set c
	mem1 = set c
	mem1 = set c
	mem1 = set c
	drop
	mem1 = set c
	mem1 = set c
	mem1 = set c
	mem1 = set c
	mem1 = set c
	mem1 = set c
	mem1 = set c
	pickup c
	jump f
endif


