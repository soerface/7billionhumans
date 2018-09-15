-- 7 Billion Humans (2053) --
-- 26: Budget Brigade 2 --

-- Author: ansvonwa
-- Size: 10
-- Speed: 190
-- Speed Tests: 193, 186, 191, 191, 187

a:
if n == worker:
	giveto n
	takefrom s
endif
if s == shredder and
 myitem == datacube:
	giveto s
endif
if myitem >= 50:
	giveto e
else:
	giveto w
endif
jump a


