-- 7 Billion Humans (2053) --
-- 26: Budget Brigade 2 --

-- Author: ansvonwa
-- Size: 17
-- Speed: 69

if s == printer:
	a:
	takefrom s
	giveto n
	jump a
endif
if n == worker:
	b:
	if myitem != nothing:
		giveto n
	endif
	jump b
endif
if s == shredder:
	c:
	if myitem == datacube:
		giveto s
	endif
	jump c
endif
d:
if myitem >= 50:
	giveto e
endif
if myitem < 50:
	giveto w
endif
jump d


