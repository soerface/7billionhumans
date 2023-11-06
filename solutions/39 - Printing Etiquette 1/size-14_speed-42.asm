-- 7 Billion Humans (2087) --
-- 39: Printing Etiquette 1 --

-- Author: landfillbaby
-- Size: 14
-- Speed: 42

mem1 = nearest printer
takefrom mem1
step sw
step w
a:
if c == datacube:
	step n
	jump a
endif
b:
drop
if w != wall:
	mem2 = nearest datacube
	takefrom mem1
	step mem2
	step w
	jump b
endif


