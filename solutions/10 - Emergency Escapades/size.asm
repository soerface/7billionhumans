-- 7 Billion Humans (2056) --
-- 10: Emergency Escapades --

-- Target Size: 9
-- Size: 9
-- Target Speed: 25
-- Speed: 204

a:
if c == 1:
	step n
endif
if c == 2:
	step e
endif
if c == 3:
	step s
endif
if c == 4 or
 c != datacube:
	step w
endif
jump a