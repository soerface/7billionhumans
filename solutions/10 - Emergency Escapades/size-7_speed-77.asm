-- 7 Billion Humans (2235) --
-- 10: Emergency Escapades --

-- Author: Ammmob
-- Size: 23
-- Speed: 21

a:
if c == 3 or
 s == 3:
	step s
endif
if sw != nothing or
 c == nothing and
 w != hole and
 n != 4 and
 c != 1:
	step w
endif
if n == 4 or
 c == 4 and
 w != 1 and
 n != hole or
 c == 1:
	step n
endif
jump a


