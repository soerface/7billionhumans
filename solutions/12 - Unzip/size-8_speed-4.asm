-- 7 Billion Humans (2053) --
-- 12: Unzip --

-- Author: tiansh
-- Size: 8
-- Speed: 4

pickup c
a:
if w != worker or
 se == worker:
	step n
	drop
endif
if w != worker or
 ne == worker or
 e == wall:
	step s
	drop
endif
jump a


