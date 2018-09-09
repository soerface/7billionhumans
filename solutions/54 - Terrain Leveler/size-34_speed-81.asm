-- 7 Billion Humans (2053) --
-- 54: Terrain Leveler --

-- Author: soerface
-- Size: 34
-- Speed: 81

a:
step n
if c == nothing:
	jump a
endif
b:
mem1 = calc mem1 + c
if n == datacube:
	step n
	jump b
endif
if w != nothing:
	pickup c
	write mem1
	drop
	step n
	listenfor coffeetime
	mem1 = set s
	c:
	step s
	d:
	pickup c
	write mem1
	drop
	if s == nothing:
		end
	endif
	jump c
endif
e:
step e
mem1 = calc mem1 + c
if e != nothing:
	jump e
endif
mem1 = calc mem1 / 49
f:
pickup c
write mem1
drop
step w
if w != nothing:
	jump f
endif
tell everyone coffeetime
jump d