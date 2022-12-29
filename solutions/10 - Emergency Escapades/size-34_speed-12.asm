-- 7 Billion Humans (2234) --
-- 10: Emergency Escapades --

-- Author: landfillbaby
-- Size: 34
-- Speed: 12

step w
step w
step w
step w
if c == 1:
	jump a
endif
if w != 3:
	if w != 1:
		if s == wall:
			step n
			step n
		endif
		step w
	endif
	step w
	a:
	if w != hole:
		step w
	else:
		if nw == hole:
			if sw != hole and
			 sw != wall:
				step sw
				jump b
			endif
			step n
		endif
		step nw
	endif
endif
b:
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
