-- 7 Billion Humans (2144) --
-- 38: Seek and Destroy 3 --

-- Author: 68erDirk
-- Size: 16
-- Speed: 27

mem2 = nearest hole
mem3 = nearest shredder
a:
step n
if c < mem1 or
 mem1 != datacube:
	mem1 = set c
endif
if n == nothing:
	pickup mem1
	b:
	mem4 = nearest worker
	if mem4 == nothing:
		giveto mem3
	endif
	if myitem > mem4 or
	 myitem == nothing:
		step mem2
	endif
	if myitem == mem4:
		step w,sw,s,e,se
	endif
	jump b
endif
jump a


