-- 7 Billion Humans (2053) --
-- 32: Creative Writhing --

-- Author: soerface
-- Size: 19
-- Speed: 37

a:
b:
step s
pickup c
write 99
drop
if s == datacube:
	jump a
endif
if e == datacube:
	step e
else:
	if w == datacube:
		step w
	endif
endif
pickup c
write 99
drop
step s
pickup c
write 99
drop
jump b