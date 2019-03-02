-- 7 Billion Humans (2144) --
-- 52: The Mode Code --

-- Author: 68erDirk
-- Size: 36
-- Speed: 131

mem1 = nearest datacube
step nw
a:
if nw == datacube:
	mem3 = calc mem3 + 1
	step w
	jump a
endif
b:
step e
c:
if c == mem3:
	mem2 = calc mem2 + 1
endif
if w == mem3:
	mem2 = calc mem2 + 1
endif
if e == mem3:
	mem2 = calc mem2 + 1
endif
if n != nothing:
	step n
	jump c
endif
step e
step e
if e == wall:
	jump d
endif
step e
e:
if w == mem3:
	mem2 = calc mem2 + 1
endif
if c == mem3:
	mem2 = calc mem2 + 1
endif
if e == mem3:
	mem2 = calc mem2 + 1
endif
if s != nothing:
	step s
	jump e
endif
step e
step e
jump b
d:
pickup mem1
write mem2
drop
