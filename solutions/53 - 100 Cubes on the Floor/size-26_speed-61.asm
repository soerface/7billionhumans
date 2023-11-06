-- 7 Billion Humans (2145) --
-- 53: 100 Cubes on the Floor --

-- Author: landfillbaby
-- Size: 26
-- Speed: 61

a:
step w
if c == nothing:
	jump a
endif
pickup c
if n == wall:
	mem1 = set 99
	jump b
endif
if s == wall:
	mem1 = set 9
	jump c
endif
d:
mem1 = set n
if mem1 != 0:
	mem1 = calc mem1 - 10
	jump e
endif
mem1 = set s
if mem1 != 0:
	mem1 = calc mem1 + 10
	jump f
endif
jump d
f:
b:
c:
e:
g:
write mem1
drop
if w != wall:
	step w
	pickup c
	mem1 = calc mem1 - 1
	jump g
endif


