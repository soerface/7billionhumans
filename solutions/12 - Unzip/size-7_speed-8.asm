-- 7 Billion Humans (2234) --
-- 12: Unzip --

-- Author: landfillbaby
-- Size: 7
-- Speed: 8

a:
pickup c
if nw == wall or
 se == 0 or
 sw == 0:
	step n
endif
if e == wall and
 w == 0 or
 ne == 0 or
 nw == 0:
	step s
endif
drop
jump a


