-- 7 Billion Humans (2056) --
-- 24: Budget Brigade 1 --

-- Target Size: 7
-- Size: 6
-- Target Speed: 50
-- Speed: 106

a:
if s == printer:
	takefrom s
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
takefrom w
jump a