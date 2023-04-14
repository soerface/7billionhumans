-- 7 Billion Humans (2235) --
-- 53: 100 Cubes on the Floor --

-- Author: davidgauch
-- Size: 15
-- Speed: 77

a:
if w != datacube:
	step w
	jump a
endif
if s == wall:
	mem1 = set 99
else:
	b:
	if s != datacube:
		jump b
	endif
	mem1 = calc s - 10
endif
c:
pickup w
write mem1
drop
step w
mem1 = calc mem1 - 1
jump c


