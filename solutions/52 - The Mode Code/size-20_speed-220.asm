-- 7 Billion Humans (2056) --
-- 52: The Mode Code --

-- Author: tiansh
-- Size: 20
-- Speed: 220

mem4 = nearest datacube
a:
if w == worker:
	mem1 = calc mem1 + 1
	step w
	jump a
endif
step nw
b:
if mem2 > 0:
	step s
else:
	step n
endif
if c == mem1:
	mem3 = calc mem3 + 1
endif
if c == nothing:
	mem2 = calc 1 - mem2
	step e
endif
if e != wall:
	jump b
endif
pickup mem4
write mem3
drop


