-- 7 Billion Humans (2053) --
-- 10: Emergency Escapades --

-- Author: soerface
-- Size: 40
-- Speed: 19

a:
step w
step w
b:
step w
if c == 1:
	if s == wall:
		step n
		step nw
		jump c
	endif
	if sw != hole:
		step sw
		jump d
	endif
	if nw != hole:
		step nw
		jump e
	endif
	if w != hole:
		step w
		jump f
	endif
endif
jump b
if c == 3:
	f:
	c:
	e:
	d:
	step sw
	step s
	step sw
	g:
	step w
	step w
	step w
	step nw
	step n
	step n
	step n
	step n
	step nw
	jump g
endif
if w == hole and
 sw != hole:
	step sw
endif
if w == hole and
 nw != hole:
	step nw
endif
if w == hole and
 s == wall:
	step n
	step nw
endif
jump a


