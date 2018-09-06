-- 7 Billion Humans (2056) --
-- 10: Emergency Escapades --

-- Target Size: 9
-- Size: 28
-- Target Speed: 25
-- Speed: 16

a:
if w != datacube:
	step w
	jump a
endif
if n == hole and
 sw == 1:
	step sw
	jump b
else:
	if s == wall:
		step n
		step nw
	else:
		step w
		if w == hole:
			step n
		endif
	endif
endif
b:
step w
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
step nw
step n
step n