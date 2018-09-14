-- 7 Billion Humans (2053) --
-- 20: Reverse Line --

-- Author: ansvonwa
-- Size: 44
-- Speed: 4

if se == hole or
 sw == hole:
	if se == hole:
		step s
		step sw
		pickup ne
		step w
		step w
		a:
		step w
		step w
		b:
		step w
		step nw
		drop
	endif
	pickup s
	step e
	step e
	step e
	c:
	step e
	step e
	d:
	step e
	step se
	drop
endif
step s
if ne == worker or
 nw == worker:
	if s == worker:
		pickup c
		step sw
		jump a
	endif
	pickup c
	step ne
	jump c
endif
pickup c
if ne == worker or
 n == worker:
	step n
	step e
	jump d
endif
if s == worker:
	step s
	step w
	jump b
endif
if w != worker:
	step e
else:
	step w
endif
drop


