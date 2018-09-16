-- 7 Billion Humans (2144) --
-- 38: Seek and Destroy 3 --

-- Author: tiansh
-- Size: 14
-- Speed: 29
-- Speed Tests: 29, 29, 29, 29, 29, 28, 29, 29, 29, 28, 29, 29
-- Success Rate: 227/300

a:
step n
if c <= mem1 or
 mem1 != datacube:
	mem1 = set c
endif
if n == wall:
	pickup mem1
	mem4 = nearest shredder
	b:
	mem2 = nearest worker
	if mem2 == nothing:
		giveto mem4
	endif
	if myitem >= mem2 or
	 myitem == nothing:
		mem4 = nearest hole
		step mem4
	endif
	jump b
endif
jump a


