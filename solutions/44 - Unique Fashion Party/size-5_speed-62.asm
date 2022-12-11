-- 7 Billion Humans (2056) --
-- 44: Unique Fashion Party --

-- Author: landfillbaby, modified by KuriyamaMirai
-- Size: 
-- Speed: 62
-- Speed Tests: 67, 55, 63, 63, 63, 63, 65, 67, 55, 62
-- Success Rate: 250 / 250

pickup s
a:
step nw,w,sw,n,s,ne
if n == myitem or
 nw == myitem or
 w == myitem:
	mem1 = calc 0 / 0
endif
jump a
