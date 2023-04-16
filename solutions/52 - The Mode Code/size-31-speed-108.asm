-- 7 Billion Humans (2053) --
-- 52: The Mode Code --

-- Author: davidgauch
-- Size: 31
-- Speed: 108

mem4 = nearest datacube
a:
if w == worker:
	mem1 = calc mem1 + 1
	step w
	jump a
endif
step n
b:
step n
c:
if c == mem1 or
 w == mem1:
	if c == mem1 and
	 w == mem1:
		mem2 = calc mem2 + 2
	else:
		mem2 = calc mem2 + 1
	endif
endif
if n == datacube:
	jump b
endif
step e
step e
d:
if c == mem1 or
 w == mem1:
	if c == mem1 and
	 w == mem1:
		mem2 = calc mem2 + 2
	else:
		mem2 = calc mem2 + 1
	endif
endif
if s == datacube:
	step s
	jump d
endif
if e != nothing:
	step e
	step e
	jump c
endif
pickup mem4
write mem2
drop


