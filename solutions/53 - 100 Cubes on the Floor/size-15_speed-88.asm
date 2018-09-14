-- 7 Billion Humans (2056) --
-- 53: 100 Cubes on the Floor --

-- Author: tiansh
-- Size: 15
-- Speed: 88

a:
step w
if w != wall:
	jump a
endif
if n == wall:
	mem1 = set 9
else:
	b:
	if n == 0 or
	 n == nothing:
		jump b
	endif
	mem1 = calc n + 10
endif
c:
pickup c
write mem1
drop
step e
mem1 = calc mem1 - 1
jump c


