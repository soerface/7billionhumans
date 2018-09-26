-- 7 Billion Humans (2053) --
-- 40: Printing Etiquette 2 --

-- Author: ansvonwa
-- Size: 8
-- Speed: 120
-- Speed Tests: 120, 121, 120

mem1 = nearest printer
a:
if myitem == nothing and
 mem2 < 5:
	takefrom mem1
	mem2 = calc mem2 + 1
	write mem2
endif
step nw,w,sw,n,s,ne,e,se
drop
jump a


