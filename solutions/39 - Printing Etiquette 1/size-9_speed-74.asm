-- 7 Billion Humans (2053) --
-- 39: Printing Etiquette 1 --

-- Author: soerface
-- Size: 9
-- Speed: 74

mem1 = nearest printer
mem2 = set 5
a:
if mem2 > 0:
	takefrom mem1
endif
step nw,w,sw,n,s,ne,e,se
if c == nothing:
	drop
	mem2 = calc mem2 - 1
endif
jump a


