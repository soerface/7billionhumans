-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Author: ansvonwa
-- Size: 135
-- Speed: 51
-- Speed Tests: 51, 51, 51, 51, 52

a:
step n
mem1 = set n
if mem1 == nothing:
	jump a
endif
b:
step n
mem2 = set n
if mem2 == nothing:
	jump b
endif
if mem2 < mem1:
	mem3 = set mem1
	mem1 = set mem2
	mem2 = set mem3
endif
c:
step n
mem3 = set n
if mem3 == nothing:
	jump c
endif
if mem3 < mem2:
	if mem3 < mem1:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set mem1
		mem1 = set mem4
	else:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set mem4
	endif
endif
step n
mem4 = set n
if mem4 < mem2:
	if mem4 < mem1:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set mem1
		mem1 = set n
	else:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set n
	endif
else:
	if mem4 < mem3:
		mem4 = set mem3
		mem3 = set n
	endif
endif
step n
if n <= mem4 or
 mem4 == nothing:
	mem4 = set n
	if mem4 < mem2:
		if mem4 < mem1:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set mem1
			mem1 = set n
		else:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set n
		endif
	else:
		if mem4 < mem3:
			mem4 = set mem3
			mem3 = set n
		endif
	endif
endif
step n
if n <= mem4 or
 mem4 == nothing:
	mem4 = set n
	if mem4 < mem2:
		if mem4 < mem1:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set mem1
			mem1 = set n
		else:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set n
		endif
	else:
		if mem4 < mem3:
			mem4 = set mem3
			mem3 = set n
		endif
	endif
else:
	if n == nothing:
		step n
		if n == datacube:
			jump d
		endif
		step n
	endif
endif
step n
d:
if n <= mem4 or
 mem4 == nothing:
	mem4 = set n
	if mem4 < mem2:
		if mem4 < mem1:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set mem1
			mem1 = set n
		else:
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set n
		endif
	else:
		if mem4 < mem3:
			mem4 = set mem3
			mem3 = set n
		endif
	endif
endif
e:
pickup mem1
mem1 = nearest shredder
giveto mem1
pickup mem2
giveto mem1
pickup mem3
giveto mem1
pickup mem4
giveto mem1
f:
step n
mem1 = set n
if mem1 == nothing:
	jump f
endif
g:
step n
mem2 = set n
if mem2 == nothing:
	jump g
endif
if mem2 < mem1:
	mem3 = set mem1
	mem1 = set mem2
	mem2 = set mem3
endif
h:
step n
mem3 = set n
if mem3 == nothing:
	jump h
endif
if mem3 < mem2:
	if mem3 < mem1:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set mem1
		mem1 = set mem4
	else:
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set mem4
	endif
endif
jump e


