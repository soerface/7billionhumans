-- 7 Billion Humans (2087) --
-- 50: Cubical Communication --

-- Author: landfillbaby
-- Size: 8
-- Speed: 38

mem1 = nearest datacube
a:
if mem1 == 1:
	takefrom s
	giveto se
	step w
	mem1 = set 3
endif
mem1 = calc mem1 - 1
jump a