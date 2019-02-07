-- 7 Billion Humans (2053) --
-- 52: The Mode Code --

-- Author: Tiza59
-- Size: 32
-- Speed: 110

mem4 = nearest datacube
a:
if w == worker:
	mem1 = calc mem1 + 1
	step w
	jump a
endif
step nw
step n
b:
c:
if c == mem1 or
 e == mem1:
	if c == mem1 and
	 e == mem1:
		mem2 = calc mem2 + 2
	else:
		mem2 = calc mem2 + 1
	endif
endif
if n == datacube:
	step n
	jump b
endif
step e
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
	jump c
endif
pickup mem4
write mem2
drop
