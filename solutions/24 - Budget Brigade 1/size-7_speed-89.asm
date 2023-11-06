-- 7 Billion Humans (2053) --
-- 24: Budget Brigade 1 --

-- Author: LCL
-- Size: 7
-- Speed: 89

a:
if s == printer:
	takefrom s
	jump a
endif
b:
if e == hole and
 myitem == datacube:
	giveto s
endif
takefrom w
jump b


