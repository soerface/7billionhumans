-- 7 Billion Humans (2145) --
-- 60: Understaffed Sorting --

-- Author: landfillbaby
-- Size: 37
-- Speed: 138

if e == worker:
	step w
	step w
endif
a:
b:
if se < s and
 se == datacube and
 s == datacube and
 sw != worker and
 w != worker:
	pickup s
	drop
	pickup se
	step s
	drop
	pickup n
	step e
	drop
	step n
	jump a
endif
if e == wall:
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
else:
	step e
endif
jump b


