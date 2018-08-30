-- 7 Billion Humans (2053) --
-- 24: Budget Brigade 1 --

-- Target Size: 7
-- Size: 7
-- Target Speed: 50
-- Speed: 133

if s == shredder:
	a:
	if myitem == datacube:
		giveto s
	endif
	jump a
endif
b:
takefrom s
giveto e
jump b
