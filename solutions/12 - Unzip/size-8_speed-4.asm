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
	jump b
endif
if ne == nothing and
 nw != worker:
	jump a
endif
step s
b:
drop


