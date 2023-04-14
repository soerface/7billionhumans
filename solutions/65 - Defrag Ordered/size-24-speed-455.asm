-- 7 Billion Humans (2235) --
-- 65: Defrag Ordered --

-- Author: davidgauch
-- Size: 24
-- Speed: 455

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
drop
if c == datacube and
 e != hole:
	step e
	jump e
endif
if e == hole and
 c == datacube:
	step sw
	jump c
endif
f:
g:
if c != datacube and
 e != hole:
	step e
	jump g
endif
if c == datacube:
	pickup c
	jump a
endif
step sw
h:
step w
if w != hole:
	jump h
endif
jump f


