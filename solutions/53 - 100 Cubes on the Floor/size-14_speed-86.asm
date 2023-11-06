-- 7 Billion Humans (2145) --
-- 53: 100 Cubes on the Floor --

-- Author: landfillbaby
-- Size: 14
-- Speed: 86

a:
step w
if c != datacube:
	jump a
endif
if n != wall:
	b:
	if n == 0 and
	 nw != worker:
		jump b
	endif
	mem1 = calc n + 10
endif
c:
pickup c
write mem1
drop
if w != wall:
	step w
	mem1 = calc mem1 + 1
	jump c
endif


