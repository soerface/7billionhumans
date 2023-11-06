-- 7 Billion Humans (2087) --
-- 30: Fill the Floor --

-- Author: landfillbaby
-- Size: 7
-- Speed: 229
-- Speed Tests: 229, 220, 239, 229, 227, 229, 246, 220, 213, 237

mem1 = nearest printer
a:
takefrom mem1
b:
step nw,w,sw,s,ne,e,se
if c == datacube:
	jump b
endif
drop
jump a


