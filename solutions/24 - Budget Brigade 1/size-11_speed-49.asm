-- 7 Billion Humans (2053) --
-- 24: Budget Brigade 1 --

-- Author: soerface
-- Size: 11
-- Speed: 49

if s == printer:
	a:
	takefrom s
	giveto e
	jump a
endif
if s == shredder:
	b:
	if myitem == datacube:
		giveto s
	endif
	jump b
endif
c:
if myitem == datacube:
	giveto e
endif
jump c


