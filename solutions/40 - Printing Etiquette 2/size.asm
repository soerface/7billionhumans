-- 7 Billion Humans (2053) --
-- 40: Printing Etiquette 2 --

-- Target Size: 10
-- Size: 10
-- Target Speed: 55
-- Speed: 76

mem1 = nearest printer
mem2 = set 5
a:
if mem2 > 0:
	takefrom mem1
endif
step nw,w,sw,n,s,ne,e,se
if c == nothing:
	write mem2
	drop
	mem2 = calc mem2 - 1
endif
jump a