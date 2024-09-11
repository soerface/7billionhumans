-- 7 Billion Humans (2229M) --
-- 32: Creative Writhing --

-- Author: soerface (modified by hakunek)
-- Size: 6
-- Speed: 519

a:
step w,n,s,e
-- this if reduces time needed to execute by skipping actions if worker is not standing on datacube
if c == datacube:
	pickup c
	write 99
	drop
endif
jump a


