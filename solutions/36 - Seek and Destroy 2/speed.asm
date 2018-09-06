-- 7 Billion Humans (2053) --
-- 36: Seek and Destroy 2 --

-- Target Size: 10
-- Size: 25
-- Target Speed: 145
-- Speed: 123

mem4 = nearest shredder
a:
mem1 = set 99
mem2 = set 99
mem3 = set 99
b:
if n != wall:
	step n
	if mem3 > c or
	 mem3 != datacube or
	 mem2 != datacube or
	 mem1 != datacube:
		if mem1 > c:
			mem3 = set mem2
			mem2 = set mem1
			mem1 = set c
		else:
			if mem2 > c:
				mem3 = set mem2
				mem2 = set c
			else:
				mem3 = set c
			endif
		endif
	endif
	jump b
endif
pickup mem1
giveto mem4
pickup mem2
giveto mem4
pickup mem3
giveto mem4
jump a