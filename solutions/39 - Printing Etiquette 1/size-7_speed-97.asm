-- 7 Billion Humans (2053) --
-- 39: Printing Etiquette 1 --

-- Author: ansvonwa
-- Size: 7
-- Speed: 97
-- Speed Tests: 98, 96, 97, 97

mem1 = nearest printer
a:
if myitem == nothing and
 mem2 < 5:
	takefrom mem1
	mem2 = calc mem2 + 1
endif
step nw,w,sw,n,s,ne,e,se
drop
jump a


