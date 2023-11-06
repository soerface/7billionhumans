-- 7 Billion Humans (2087) --
-- 22: Number Royale --

-- Author: landfillbaby
-- Size: 5
-- Speed: 10
-- Speed Tests: 10, 10, 11, 10, 10

pickup s
a:
if s == hole or
 myitem < e or
 myitem < w or
 myitem < ne or
 myitem < nw or
 myitem < n:
	step s
endif
step e
jump a


