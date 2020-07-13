-- 7 Billion Humans (2144) --
-- 26: Budget Brigade 2 --

-- Author: 68erDirk
-- Size: 8
-- Speed: 154
-- Speed Tests: 154, 154, 150, 154, 151

a:
if s == shredder and
 myitem == datacube:
	giveto s
endif
if w > 49:
	takefrom w
endif
if e < 50 or
 s == worker or
 s == printer:
	takefrom e
	takefrom s
endif
jump a


