-- 7 Billion Humans (2144) --
-- 52: The Mode Code --

-- Author: 68erDirk
-- Size: 21
-- Speed: 198

mem1 = nearest datacube
step nw
a:
if nw == datacube:
	mem3 = calc mem3 + 1
	step w
	jump a
endif
b:
c:
d:
if c == mem3:
	mem2 = calc mem2 + 1
endif
if mem4 == 0 and
 n != nothing:
	step n
	jump d
endif
if mem4 == 1 and
 s != nothing:
	step s
	jump c
endif
mem4 = calc 1 - mem4
if e != nothing:
	step e
	jump b
endif
pickup mem1
write mem2
drop
