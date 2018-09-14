-- 7 Billion Humans (2053) --
-- 10: Emergency Escapades --

-- Author: ansvonwa
-- Size: 23
-- Speed: 21

a:
if w != hole:
	step w
	jump a
endif
if ne != hole or
 se != hole:
	if ne != hole:
		if nw == hole:
			step n
		endif
		step nw
	else:
		step sw
	endif
	step w
endif
step s
step s
step sw
step w
step w
step w
step nw
step n
step n
step nw
b:
step n
jump b


