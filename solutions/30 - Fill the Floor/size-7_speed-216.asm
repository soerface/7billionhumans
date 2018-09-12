-- 7 Billion Humans (2087) --
-- 30: Fill the Floor --

-- Author: landfillbaby
-- Size: 7
-- Speed: 216

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
