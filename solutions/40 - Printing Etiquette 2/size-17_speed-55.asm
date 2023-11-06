-- 7 Billion Humans (2053) --
-- 40: Printing Etiquette 2 --

-- Author: soerface
-- Size: 17
-- Speed: 55

mem1 = nearest printer
takefrom mem1
step w
write 5
a:
if c == datacube:
	step w
	jump a
endif
b:
drop
if mem2 == 1:
	end
endif
mem2 = nearest datacube
takefrom mem1
step mem2
mem2 = calc mem2 - 1
write mem2
step n
jump b


