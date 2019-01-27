-- 7 Billion Humans (2212:2214M) --
-- 38: Seek and Destroy 3 --

-- Author: DeepAQ
-- Size: 16
-- Speed: 31
-- Speed Tests: 29, 30, 32, 32, 31, 29, 32, 31, 31, 33, 31, 30, 32

mem2 = nearest hole
mem3 = nearest shredder
a:
step n
if n == wall:
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
if c < mem1 or
 mem1 != datacube:
	mem1 = set c
endif
jump a


