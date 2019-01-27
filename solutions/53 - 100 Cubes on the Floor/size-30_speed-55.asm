-- 7 Billion Humans (2053) --
-- 53: 100 Cubes on the Floor --

-- Author: soerface
-- Size: 30
-- Speed: 55

if nw == datacube and
 se == nothing:
	mem1 = set 41
else:
	if n == wall:
		mem1 = set 1
	endif
	if s == wall and
	 e != wall:
		mem1 = set 91
	endif
endif
a:
step w
if c != datacube:
	jump a
endif
b:
if mem1 > 0:
	c:
	d:
	pickup c
	write mem1
	drop
	if w != wall:
		step w
		mem1 = calc mem1 + 1
		if mem1 > 99:
			mem1 = set 0
		endif
		jump b
	endif
endif
if e != datacube:
	e:
	mem1 = set n
	if mem1 > 0:
		mem1 = calc mem1 + 10
		jump c
	endif
	mem2 = set s
	if mem2 > 0:
		mem1 = calc mem2 - 10
		jump d
	endif
	jump e
endif


