-- 7 Billion Humans (2056) --
-- 50: Cubical Communication --

-- Author: tiansh
-- Size: 9
-- Speed: 46

mem1 = set sw
a:
b:
if mem1 > 1:
	mem1 = calc mem1 - 1
	jump b
endif
takefrom s
giveto se
step w
mem1 = set 4
jump a


