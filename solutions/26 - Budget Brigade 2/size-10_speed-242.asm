-- 7 Billion Humans (2053) --
-- 26: Budget Brigade 2 --

-- Author: soerface
-- Size: 10
-- Speed: 242

a:
if myitem >= 50 and
 e == worker:
	giveto e
endif
if myitem < 50 and
 w == worker:
	giveto w
endif
if myitem == datacube or
 s == printer:
	takefrom s
	giveto n
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
jump a


