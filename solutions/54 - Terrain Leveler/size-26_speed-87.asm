-- 7 Billion Humans (2212:2214M) --
-- 54: Terrain Leveler --

-- Author: thrfirs
-- Size: 26
-- Speed: 87

a:
step n
if c != datacube:
	jump a
endif
b:
mem1 = calc mem1 + c
if n != datacube:
	if w == datacube:
		listenfor hi
		mem1 = calc mem1 + w
	endif
	pickup c
	write mem1
	tell e hi
	if e == worker:
		listenfor morning
		mem1 = set e
	else:
		mem1 = calc mem1 / 49
	endif
	write mem1
	tell w morning
	drop
	c:
	step s
	pickup c
	write mem1
	drop
	jump c
endif
step n
jump b


