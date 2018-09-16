-- 7 Billion Humans (2087) --
-- 44: Unique Fashion Party --

-- Author: landfillbaby
-- Size: 10
-- Speed: 59

pickup s
a:
step s
if s != wall:
	jump a
endif
b:
step e
if n != myitem and
 n != nothing or
 s != hole:
	jump b
endif
if n == myitem:
	step s
endif
step n