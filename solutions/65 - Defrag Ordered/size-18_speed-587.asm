-- 7 Billion Humans (2056) --
-- 65: Defrag Ordered --

-- Author: tiansh
-- Size: 18
-- Speed: 587

a:
b:
if n != hole:
	step n
	jump b
endif
c:
d:
if w != hole:
	step w
	jump d
endif
e:
if mem1 == 0 and
 c == nothing and
 myitem == nothing:
	mem1 = set 1
endif
if mem1 == 1 and
 c == datacube and
 myitem == nothing:
	pickup c
	jump a
endif
if mem1 == 1 and
 c == nothing and
 myitem == datacube:
	drop
endif
if e != hole:
	step e
	jump e
endif
step s
jump c


