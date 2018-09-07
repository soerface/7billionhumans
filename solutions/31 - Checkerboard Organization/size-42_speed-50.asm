-- 7 Billion Humans (2053) --
-- 31: Checkerboard Organization --

-- Target Size: 7
-- Size: 42
-- Target Speed: 100
-- Speed: 50

mem1 = nearest printer
takefrom mem1
step ne
step ne
step e
a:
if w == hole or
 s == hole or
 e != wall and
 c == nothing:
	drop
	jump b
endif
if e == wall:
	step sw
else:
	step se
endif
jump a
b:
c:
mem2 = nearest datacube
takefrom mem1
step mem2
if w != hole:
	step w
	if w == wall and
	 c == datacube:
		step mem1
		step se
		d:
		step e
		if c == nothing:
			drop
			end
		endif
		step e
		jump d
	endif
	if w == wall:
		step mem1
		step sw
		e:
		step w
		if c == nothing:
			drop
			end
		endif
		step w
		jump e
	endif
	step w
else:
	step sw
	step nw
endif
drop
jump c