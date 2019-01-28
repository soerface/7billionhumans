-- 7 Billion Humans (2144) --
-- 30: Fill the Floor --

-- Author: soerface
-- Size: 6
-- Speed: 324
-- Speed Tests: 340, 299, 334, 305, 337, 317, 313, 320, 342, 328, 330

mem1 = nearest printer
a:
step nw,w,sw,n,s,ne,e,se
if c == nothing:
	drop
	takefrom mem1
endif
jump a


