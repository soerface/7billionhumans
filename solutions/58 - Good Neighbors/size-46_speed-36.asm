-- 7 Billion Humans (2053) --
-- 58: Good Neighbors --

-- Author: soerface
-- Size: 46
-- Speed: 36

a:
b:
mem1 = nearest datacube
step mem1
c:
if c == nothing:
	jump a
endif
if c != 8:
	step nw,w,sw,n,s,ne,e,se
	jump c
endif
pickup c
mem1 = nearest wall
step mem1
d:
if e == wall or
 w == wall:
	if c == datacube:
		step n
		jump d
	endif
endif
e:
if n == wall or
 s == wall:
	if c == datacube:
		step w
		jump e
	endif
endif
drop
if n == wall:
	step s
	step s
	step s
	step s
	step s
endif
if e == wall:
	step w
	step w
	step w
	step w
	step w
	step w
endif
if s == wall:
	step n
	step n
	step n
	step n
	step n
endif
if w == wall:
	step e
	step e
	step e
	step e
	step e
	step e
endif
jump b


