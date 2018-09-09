-- 7 Billion Humans (2053) --
-- 53: 100 Cubes on the Floor --

-- Author: soerface
-- Size: 25
-- Speed: 63

a:
step w
if c != datacube or
 e != nothing:
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
if n != 0:
	mem1 = calc n - 10
	jump e
endif
if s != 0:
	mem1 = calc s + 10
	jump f
endif
jump d
b:
c:
e:
f:
g:
write mem1
drop
if w == wall:
	end
endif
step w
pickup c
mem1 = calc mem1 - 1
jump g