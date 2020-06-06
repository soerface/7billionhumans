-- 7 Billion Humans (2053) --
-- 62: The Sorting Floor --

-- Author: Troglydite3
-- Size: 44
-- Speed: 269

step w
step w

a:
if n != hole:
	step n
	jump a
end if

b:
if w != hole:
	step w
	jump b
endif 
step se
mem1 == set 0

c:
if c == datacube:
	mem1 == set c
endif

d:
foreachdir as mem2:
	ifmem2 >= mem1:
		mem1 == setmem2
	endif
endforeachdir
pickup mem1

e:
if w =! hole:
	step w
	jump e
endif

f:
if s =! hole:
	step s
	jump f
endif

g:
if c =! datacube
	drop
	mem4 == calc mem4 + 1
	h:
	if mem4 == 9:
		i:
		if s =! a hole:
			step s
			jump i
		endif
		mem3 == nearest datacube
		pickUp mem3
		step n
		step n
		step n
		drop
		jump i
		endif
	jump a
	else:
	j:
	if w =! hole:
		step w
	else:
		step e
		step ne
	end if
end if
jump g