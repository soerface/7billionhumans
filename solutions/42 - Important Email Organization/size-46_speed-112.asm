-- 7 Billion Humans (2053) --
-- 42: Important Email Organization --

-- Author: yaheath
-- Size: 46
-- Speed: 112
-- Speed Tests: 112, 112, 112, 113

mem4 = nearest wall
step sw
step sw
a:
step sw
if sw != wall:
	jump a
endif
mem1 = nearest shredder
step mem1
step e
step e
step e
step e
step e
mem3 = nearest datacube
b:
stem mem4
c:
mem2 = nearest datacube
step mem2
if s == shredder or
 c == nothing:
	jump b
endif
pickup mem2
if mem2 < 50:
	step mem1
	if mem2 >= 10:
		step e
	endif
	if mem2 >= 20:
		step e
	endif
	if mem2 >= 30:
		step e
	endif
	if mem2 >= 40:
		step e
	endif
else:
	step mem3
	if mem2 >= 60:
		step e
	endif
	if mem2 >= 70:
		step e
	endif
	if mem2 >= 80:
		step e
	endif
	if mem2 >= 90:
		step e
	endif
endif
giveto s
step nw,n,ne
step nw,n,ne
step nw,n,ne
step nw,n,ne
jump c
