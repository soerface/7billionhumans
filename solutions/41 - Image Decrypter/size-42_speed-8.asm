-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Author: ansvonwa
-- Size: 42
-- Speed: 8

pickup w
step w
mem1 = set myitem
if mem1 > 8:
	if mem1 > 10:
		if mem1 == 12:
			step w
		endif
		step w
		a:
		step w
		step w
		step w
		step w
		step w
		step w
		step w
		step w
		step w
		step w
		drop
		b:
		step n
		jump b
	else:
		if mem1 == 10:
			jump a
		else:
			step w
			step w
		endif
	endif
endif
if mem1 >= 6:
	if mem1 >= 7:
		step w
	endif
	step w
endif
if mem1 >= 4:
	if mem1 >= 5:
		step w
	endif
	step w
endif
if mem1 >= 3:
	step w
	step w
endif
step w
drop
c:
step s
jump c


