-- 7 Billion Humans (2053) --
-- 26: Budget Brigade 2 --

-- Author: soerface
-- Size: 23
-- Speed: 67

if s == printer:
	a:
	takefrom s
	giveto n
	jump a
endif
if s == shredder:
	b:
	if myitem == datacube:
		giveto s
	endif
	jump b
endif
if nw == worker and
 ne == worker:
	c:
	if myitem >= 50:
		giveto ne
	endif
	if myitem < 50:
		giveto nw
	endif
	jump c
endif
if w == worker and
 e == worker:
	d:
	if myitem >= 50:
		giveto e
	endif
	if myitem < 50:
		giveto w
	endif
	jump d
endif
e:
if myitem == datacube:
	giveto n
endif
jump e


