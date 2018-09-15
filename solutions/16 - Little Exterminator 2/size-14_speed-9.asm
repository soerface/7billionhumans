-- 7 Billion Humans (2053) --
-- 16: Little Exterminator 2 --

-- Author: ansvonwa
-- Size: 14
-- Speed: 9

step s
step s
step s
a:
step s
if s != wall and
 s != hole:
	jump a
endif
pickup c
step e
step e
step e
b:
step e
if s == shredder:
	giveto s
endif
jump b


