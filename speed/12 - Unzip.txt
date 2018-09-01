-- 7 Billion Humans (2053) --
-- 12: Unzip --

-- Target Size: 8
-- Size: 8
-- Target Speed: 7
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


