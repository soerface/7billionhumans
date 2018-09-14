-- 7 Billion Humans (2053) --
-- 21: Big Data --

-- Author: soerface
-- Size: 8
-- Speed: 21
-- Speed Tests: 20, 22, 18, 20, 23, 23, 20, 23, 18, 22, 23

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


