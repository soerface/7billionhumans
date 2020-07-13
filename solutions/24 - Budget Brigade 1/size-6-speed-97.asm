-- 7 Billion Humans (2144) --
-- 24: Budget Brigade 1 --
-- Author: 68erDirk
-- Size: 6
-- Speed: 97


a:
if s == printer and
 myitem != datacube:
	takefrom s
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
takefrom w
jump a


