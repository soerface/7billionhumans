-- 7 Billion Humans (2053) --
-- 53: 100 Cubes on the Floor --

-- Author: ansvonwa
-- Size: 40
-- Speed: 42

if ne == wall or
 w == datacube:
	if e == wall and
	 ne == wall:
		if s == wall:
			mem1 = set 79
		else:
			mem1 = set 39
		endif
		step w
		step w
		step w
	else:
		if n == nothing:
			if s == wall:
				mem1 = set 99
			else:
				mem1 = set 49
			endif
		else:
			if n == wall:
				mem1 = set 9
			else:
				mem1 = set 19
			endif
		endif
	endif
else:
	if sw == worker:
		if e == wall:
			mem1 = set 89
		else:
			mem1 = set 59
			step w
		endif
	else:
		if ne != worker:
			mem1 = set 29
		else:
			mem1 = set 69
		endif
	endif
	step w
endif
step w
a:
pickup c
write mem1
drop
step w
mem1 = calc mem1 - 1
jump a


