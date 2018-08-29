-- 7 Billion Humans (2053) --
-- 22: Number Royale --

-- Target Size: 6
-- Size: 6
-- Target Speed: 11
-- Speed: 10

pickup s
a:
if myitem < w or
 myitem < e or
 s != hole:
	step s
else:
	step e
endif
jump a


