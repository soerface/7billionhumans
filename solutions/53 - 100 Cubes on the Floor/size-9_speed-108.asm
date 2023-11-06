-- 7 Billion Humans (2145) --
-- 53: 100 Cubes on the Floor --

-- Author: landfillbaby
-- Size: 9
-- Speed: 108

a:
if w == wall or
 n != 0 and
 c == 0 or
 c == nothing:
	if e == nothing and
	 n != wall and
	 c == 0:
		mem1 = calc n + 10
	endif
	pickup c
	write mem1
	drop
	step w
	mem1 = calc mem1 + 1
endif
jump a


