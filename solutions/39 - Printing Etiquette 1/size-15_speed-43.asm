-- 7 Billion Humans (2053) --
-- 39: Printing Etiquette 1 --

-- Author: soerface
-- Size: 15
-- Speed: 43

mem1 = nearest printer
takefrom mem1
step w
step w
a:
if c == datacube:
	step n
	jump a
endif
b:
drop
if w == wall:
	end
endif
mem2 = nearest datacube
takefrom mem1
step mem2
step w
jump b


