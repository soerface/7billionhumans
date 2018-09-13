-- 7 Billion Humans (2087) --
-- 30: Fill the Floor --

-- Author: landfillbaby
-- Size: 9
-- Speed: 144, 155, 161, 155, 161, 144, 163, 137, 152, 154

mem1 = nearest printer
a:
mem2 = nearest wall
takefrom mem1
step mem2
b:
if c == datacube:
	step nw,w,sw,n,s,ne,e,se
	jump b
endif
drop
jump a
