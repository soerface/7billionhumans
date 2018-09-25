-- 7 Billion Humans (2145) --
-- 60: Understaffed Sorting --

-- Author: landfillbaby
-- Size: 12
-- Speed: 151

a:
step w,e
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
	step nw
endif
jump a