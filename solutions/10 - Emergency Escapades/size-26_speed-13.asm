-- 7 Billion Humans (2234) --
-- 10: Emergency Escapades --

-- Author: landfillbaby
-- Size: 26
-- Speed: 13

if s == wall:
	step nw
endif
step w
a:
step w
if w != 1:
	jump a
endif
step w
if nw != hole:
	step nw
else:
	if w != hole:
		step w
	else:
		step sw
	endif
endif
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


