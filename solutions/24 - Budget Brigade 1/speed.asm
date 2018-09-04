-- 7 Billion Humans (2056) --
-- 24: Budget Brigade 1 --

-- Target Size: 7
-- Size: 12
-- Target Speed: 50
-- Speed: 47

if s == printer:
	a:
	if myitem != datacube:
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
if myitem != datacube:
	takefrom w
endif
jump c