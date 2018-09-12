-- 7 Billion Humans (2087) --
-- 39: Printing Etiquette 1 --

-- Author: landfillbaby
-- Size: 8
-- Speed: 46

a:
mem1 = nearest printer
if mem2 < 5 and
 myitem == nothing:
	takefrom mem1
endif
step nw,w,sw,n,ne,e,se
if c == nothing and
 myitem != nothing:
	drop
	mem2 = calc mem2 + 1
endif
jump a
