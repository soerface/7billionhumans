-- 7 Billion Humans (2087) --
-- 40: Printing Etiquette 2 --

-- Author: landfillbaby
-- Size: 9
-- Speed: 53
-- Speed Tests: 53, 53, 53, 55, 54, 53, 53, 52, 53, 53

a:
mem1 = nearest printer
if mem2 < 5 and
 myitem == nothing:
	takefrom mem1
endif
step nw,w,sw,n,ne,e,se
if c == nothing and
 myitem != nothing:
	mem2 = calc mem2 + 1
	write mem2
	drop
endif
jump a


