-- 7 Billion Humans (2087) --
-- 12: Unzip --

-- Author: landfillbaby
-- Size: 8
-- Speed: 4

pickup c
a:
if sw != nothing or
 se == worker:
	step n
	drop
endif
if ne != nothing or
 nw == worker:
	step s
	drop
endif
jump a


