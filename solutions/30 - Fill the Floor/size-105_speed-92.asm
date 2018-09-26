-- 7 Billion Humans (2053) --
-- 30: Fill the Floor --

-- Author: ansvonwa
-- Size: 105
-- Speed: 92

mem1 = nearest printer
if ne == nothing:
	takefrom mem1
	step se
	step se
	step se
	step e
	step e
	step e
	step e
	drop
	mem2 = nearest datacube
	a:
	takefrom mem1
	step mem2
	step n
	drop
	takefrom mem1
	step mem2
	step w
	drop
	mem2 = nearest datacube
	jump a
endif
if sw == nothing:
	takefrom mem1
	step sw
	drop
	takefrom mem1
	step sw
	step w
	drop
	takefrom mem1
	step sw
	step w
	step w
	drop
	takefrom mem1
	step sw
	step w
	step w
	step w
	drop
	takefrom mem1
	step se
else:
	if w == nothing:
		takefrom mem1
		step n
		step n
		drop
		pickup c
		drop
		pickup c
		drop
		pickup c
		drop
		pickup c
	else:
		if n == wall:
			if e == worker:
				takefrom mem1
				step n
			else:
				takefrom mem1
			endif
		else:
			if e == wall:
				takefrom mem1
				step se
				step sw
			else:
				takefrom mem1
				step se
				step sw
				step s
			endif
		endif
	endif
	drop
	mem2 = nearest datacube
	takefrom mem1
	step mem2
	step w
	drop
	mem3 = nearest datacube
	takefrom mem1
	step mem3
	step w
	drop
	mem3 = nearest datacube
	takefrom mem1
	step mem3
	step w
	drop
	mem3 = nearest datacube
	takefrom mem1
	step mem3
	step w
	drop
	takefrom mem1
	step mem2
	step e
endif
b:
drop
if e == wall or
 e == datacube:
	end
endif
mem2 = nearest datacube
takefrom mem1
step mem2
step e
jump b


