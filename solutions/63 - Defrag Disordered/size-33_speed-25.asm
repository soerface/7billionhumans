-- 7 Billion Humans (2053) --
-- 63: Defrag Disordered --

-- Author: soerface
-- Size: 33
-- Speed: 25

mem1 = nearest datacube
pickup mem1
step n
step n
step n
a:
step n
if n != hole:
	jump a
endif
b:
c:
if c == nothing:
	drop
	jump d
endif
if e != hole:
	step e
	jump b
endif
step s
e:
f:
if c == nothing:
	drop
	jump g
endif
if w != hole:
	step w
	jump f
endif
step s
jump c
d:
g:
step s
step s
step s
h:
if c == nothing:
	step w
	jump h
endif
pickup c
step n
step n
jump e


