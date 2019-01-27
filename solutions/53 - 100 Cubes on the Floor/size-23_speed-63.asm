-- 7 Billion Humans (2212:2214M) --
-- 53: 100 Cubes on the Floor --

-- Author: DeepAQ
-- Size: 23
-- Speed: 63

if nw == datacube and
 se == nothing:
	mem1 = set 41
endif
a:
step w
if c != datacube:
	jump a
endif
b:
if mem1 > 0:
	c:
	d:
	pickup c
	write mem1
	drop
	if w != wall:
		step w
		mem1 = calc mem1 + 1
		jump b
	endif
endif
if e != datacube:
	e:
	mem1 = set n
	if mem1 > 0:
		mem1 = calc mem1 + 10
		jump c
	endif
	mem2 = set s
	if mem2 > 0:
		mem1 = calc mem2 - 10
		jump d
	endif
	jump e
endif


