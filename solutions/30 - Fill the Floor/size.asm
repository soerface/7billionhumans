-- 7 Billion Humans (2053) --
-- 30: Fill the Floor --

-- Target Size: 7
-- Size: 7
-- Target Speed: 170
-- Speed: 737

mem1 = nearest printer
a:
takefrom mem1
step nw,w,sw,n,s,ne,e,se
if c == nothing:
	drop
endif
jump a