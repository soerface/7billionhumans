-- 7 Billion Humans (2053) --
-- 26: Budget Brigade 2 --

-- Author: ansvonwa
-- Size: 19
-- Speed: 69

if s == printer:
	a:
	takefrom s
	giveto n
	jump a
endif
if n == worker:
	b:
	c:
	if myitem == nothing:
		jump b
	endif
	giveto n
	jump c
endif
if s == shredder:
	d:
	if myitem == datacube:
		giveto s
	endif
	jump d
endif
e:
if myitem == datacube:
	if myitem >= 50:
		giveto e
	else:
		giveto w
	endif
endif
jump e


