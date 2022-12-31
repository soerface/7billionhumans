-- 7 Billion Humans (2234) --
-- 20: Reverse Line --

-- Author: landfillbaby
-- Size: 39
-- Speed: 4

if w == nothing or
 e == nothing:
	pickup s
	if se == hole:
		step w
		step w
		step w
		a:
		step w
		step sw
		b:
		step nw
		step sw
	else:
		step e
		step e
		step e
		c:
		step e
		step se
		d:
		step ne
		step se
	endif
else:
	step s
	pickup c
	if w == nothing or
	 e == nothing:
		if ne == nothing:
			step nw
			jump a
		endif
		step ne
		jump c
	endif
	if n == worker:
		if nw == worker:
			step w
			jump b
		endif
		step e
		jump d
	endif
	step s
	if w == worker:
		step nw
	else:
		step ne
	endif
endif
drop


