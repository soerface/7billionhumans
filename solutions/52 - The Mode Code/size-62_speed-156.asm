-- 7 Billion Humans (2053) --
-- 52: The Mode Code --

-- Author: soerface
-- Size: 62
-- Speed: 156

mem1 = nearest datacube
pickup s
if w == nothing:
	jump a
endif
if e == nothing:
	write 5
	jump b
endif
c:
if w == nothing:
	mem2 = calc sw + 1
	write mem2
	jump d
endif
if e == nothing:
	mem2 = calc se - 1
	write mem2
	jump e
endif
jump c
a:
b:
d:
e:
step s
drop
if mem1 > 2:
	step ne
	step ne
	f:
	if n != nothing or
	 nw != datacube:
		step e
		jump f
	endif
	step nw
	jump g
endif
step nw
step nw
h:
if n != nothing or
 ne != datacube:
	step w
	jump h
endif
step ne
g:
step n
step n
step n
step n
step n
step n
step n
if e == nothing:
	i:
	j:
	if c == mem1:
		mem3 = calc mem3 + 1
	endif
	if w == nothing:
		step s
		if c == nothing:
			jump k
		endif
		jump l
	endif
	step w
	jump i
endif
if w == nothing:
	l:
	m:
	if c == mem1:
		mem3 = calc mem3 + 1
	endif
	if e == nothing:
		step s
		if c == nothing:
			k:
			pickup mem1
			write mem3
			drop
			end
		endif
		jump j
	endif
	step e
	jump m
endif


