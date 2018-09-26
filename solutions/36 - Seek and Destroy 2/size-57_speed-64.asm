-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Author: ansvonwa
-- Size: 57
-- Speed: 64
-- Speed Tests: 64, 64, 63, 64, 63

a:
b:
step n
mem1 = set n
if mem1 == nothing:
	jump b
endif
c:
step n
mem2 = set n
if mem2 == nothing:
	jump c
endif
if mem2 < mem1:
	mem3 = set mem1
	mem1 = set mem2
	mem2 = set mem3
endif
d:
step n
mem3 = set n
if mem3 == nothing:
	jump d
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
mem4 = set 99
e:
f:
step n
if n <= mem4:
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
	jump f
endif
if n != wall:
	jump e
endif
pickup mem1
mem1 = nearest shredder
giveto mem1
pickup mem2
giveto mem1
pickup mem3
giveto mem1
pickup mem4
giveto mem1
jump a


