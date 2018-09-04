-- 7 Billion Humans (2056) --
-- 26: Budget Brigade 2 --

-- Target Size: 10
-- Size: 9
-- Target Speed: 70
-- Speed: 161

a:
if myitem != datacube and
 s != shredder:
	takefrom s
endif
if myitem >= 50:
	giveto e
else:
	giveto w
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
jump a