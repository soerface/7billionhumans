-- 7 Billion Humans (2234) --
-- 6: Little Exterminator 1 --

-- Author: landfillbaby
-- Size: 8
-- Speed: 21

a:
if s != hole:
	step s
	pickup c
endif
if sw != hole and
 se == hole:
	step sw
endif
if s == hole and
 sw == hole:
	step e
endif
jump a


