-- 7 Billion Humans (2087) --
-- 42: Important Email Organization --

-- Author: landfillbaby
-- Size: 18
-- Speed: 169

mem4 = nearest wall
a:
mem1 = nearest datacube
step mem1
if c == datacube and
 s != shredder:
	pickup c
	mem1 = calc mem1 / 10
	mem2 = nearest shredder
	step mem2
	b:
	c:
	mem2 = nearest datacube
	if mem1 < mem2:
		step w
		jump c
	endif
	if mem1 > mem2:
		step e
		jump b
	endif
	giveto s
endif
step mem4
jump a