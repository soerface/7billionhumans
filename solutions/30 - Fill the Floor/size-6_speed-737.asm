-- 7 Billion Humans (2053) --
-- 30: Fill the Floor --

-- Author: soerface
-- Size: 6
-- Speed: 737

mem1 = nearest printer
a:
takefrom mem1
step nw,w,sw,n,s,ne,e,se
if c == nothing:
	drop
endif
jump a