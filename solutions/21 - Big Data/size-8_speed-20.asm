-- 7 Billion Humans (2053) --
-- 21: Big Data --

-- Author: soerface
-- Size: 8
-- Speed: 20

step sw
a:
if s != shredder:
	step s
	jump a
endif
b:
takefrom se
if myitem < 50:
	giveto sw
	jump b
endif


