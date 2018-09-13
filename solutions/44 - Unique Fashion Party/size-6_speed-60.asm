-- 7 Billion Humans (2087) --
-- 44: Unique Fashion Party --

-- Author: landfillbaby
-- Size: 6
-- Speed: 60

pickup s
a:
step nw,w,sw,n,s,ne
if n == myitem or
 nw == myitem or
 w == myitem:
	mem1 = nearest hole
	step mem1
endif
jump a