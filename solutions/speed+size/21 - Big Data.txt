-- 7 Billion Humans (2053) --
-- 21: Big Data --

-- Target Size: 8
-- Size: 8
-- Target Speed: 32
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


