-- 7 Billion Humans (2087) --
-- 50: Cubical Communication --

-- Author: landfillbaby
-- Size: 31
-- Speed: 28

mem1 = nearest datacube
mem2 = nearest printer
mem3 = nearest shredder
if mem1 > 1:
	step e
	step w
	step e
	step w
	if mem1 > 2:
		step e
		step w
		step e
		step w
		if mem1 > 3:
			step e
			step w
			step e
			step w
		endif
	endif
endif
a:
takefrom mem2
giveto mem3
step w
step e
step w
step e
step w
step e
step w
step e
step w
step e
jump a