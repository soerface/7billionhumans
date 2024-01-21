-- 7 Billion Humans (2235) --
-- 24: Budget Brigade 1 --

-- Author: Ammmob
-- Size: 12
-- Speed: 47

if s == printer:
	a:
	if myitem == nothing:
		takefrom s
	endif
	jump a
endif
if s == shredder:
	b:
	takefrom w
	if myitem == datacube:
		giveto s
	endif
	jump b
endif
c:
if myitem == nothing:
	takefrom w
endif
jump c


