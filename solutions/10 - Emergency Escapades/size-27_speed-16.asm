-- 7 Billion Humans (2087) --
-- 10: Emergency Escapades --

-- Author: landfillbaby
-- Size: 28
-- Speed: 16

step w
step w
a:
b:
step w
if c != 1 and
 s != wall:
	jump b
endif
if s == wall:
	step nw
	jump a
endif
if nw != hole:
	step nw
	jump c
endif
if w != hole:
	step w
	jump d
endif
step sw
d:
c:
step sw
step s
step sw
step w
step w
step w
step nw
step n
step n
step n
step n
step nw
