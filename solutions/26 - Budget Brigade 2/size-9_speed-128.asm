-- 7 Billion Humans (2087) --
-- 26: Budget Brigade 2 --

-- Author: landfillbaby
-- Size: 9
-- Speed: 128
-- Speed Tests: 128, 128, 127, 127, 128, 128

a:
if s == printer or
 s >= 0 and
 myitem != datacube:
	takefrom s
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
if myitem < 50 and
 w == worker:
	giveto w
endif
if myitem >= 50 and
 e == worker:
	giveto e
endif
jump a


