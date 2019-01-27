-- 7 Billion Humans (2053) --
-- 58: Good Neighbors --

-- Author: ansvonwa
-- Size: 72
-- Speed: 10

mem1 = nearest wall
step mem1
if n == wall and
 w != worker and
 e != worker:
	step se
	mem1 = nearest datacube
	a:
	pickup mem1
	mem1 = set s
	step n
	step n
	step n
	drop
	jump a
endif
if s == wall and
 e != worker:
	mem1 = nearest datacube
	b:
	pickup mem1
	if w == worker:
		drop
		step n
		step nw
		step w
		pickup w
		step e
		mem1 = nearest wall
		step mem1
		step s
		drop
		end
	endif
	mem1 = set n
	step s
	step s
	step s
	drop
	jump b
endif
if e == wall:
	mem1 = nearest datacube
	step mem1
	if n == 3:
		step sw
		step w
		pickup w
		step e
		c:
		mem1 = nearest wall
		step mem1
		drop
		end
	endif
	if c == 3:
		step n
		pickup nw
		mem1 = nearest wall
		step mem1
		step s
		drop
	else:
		pickup nw
		d:
		jump c
	endif
endif
if w == wall and
 n == nothing and
 s == nothing:
	step e
	step se
	if se == worker:
		step ne
		e:
		step e
		pickup e
		jump d
	endif
	if ne == datacube:
		step e
		jump e
	endif
endif
if w == wall and
 s == worker or
 n == worker:
	step ne
	step ne
	pickup ne
	step sw
	drop
endif


