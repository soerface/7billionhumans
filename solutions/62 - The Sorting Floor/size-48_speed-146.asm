-- 7 Billion Humans (2053) --
-- 62: The Sorting Floor --

-- Author: soerface
-- Size: 48
-- Speed: 146

if s == worker:
	jump a
endif
b:
c:
step n
if n == datacube:
	pickup n
	jump d
endif
if n == hole and
 w == worker and
 e == worker:
	jump e
endif
jump b
d:
f:
step s
if s == hole or
 s == datacube:
	drop
	jump c
endif
jump f
a:
e:
g:
step s
step s
step s
step s
if c == datacube:
	mem1 = set c
else:
	mem1 = set 99
endif
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 <= mem1:
		mem1 = set mem2
	endif
endfor
pickup mem1
h:
if e != hole:
	step e
	jump h
endif
i:
if s != hole:
	step s
	jump i
endif
step n
j:
step n
if n != hole and
 n != datacube:
	jump j
endif
k:
if w != datacube and
 w != hole:
	step w
	jump k
endif
drop
l:
if n != hole:
	step n
	jump l
endif
if w == hole:
	step e
endif
if e == hole:
	step w
endif
jump g


