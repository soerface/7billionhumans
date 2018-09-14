-- 7 Billion Humans (2087) --
-- 24: Budget Brigade 1 --

-- Author: landfillbaby
-- Size: 6
-- Speed: 102

a:
if s == printer:
	takefrom s
endif
takefrom w
if s == shredder and
 myitem != nothing:
	giveto s
endif
jump a
