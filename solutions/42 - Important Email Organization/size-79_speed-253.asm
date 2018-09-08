-- 7 Billion Humans (2053) --
-- 42: Important Email Organization --

-- Size: 79
-- Speed: 253

step s
step s
jump a
b:
c:
step n
step n
d:
if c != datacube:
	if n == wall:
		mem2 = nearest datacube
		step mem2
		if s == shredder:
			jump c
		endif
		jump e
	endif
	step n
	jump d
endif
a:
e:
pickup c
mem1 = nearest shredder
step mem1
mem2 = calc myitem / 10
mem2 = calc mem2 - c
if mem2 == 9:
	jump f
endif
if mem2 == 8:
	jump g
endif
if mem2 == 7:
	jump h
endif
if mem2 == 6:
	jump i
endif
if mem2 == 5:
	jump j
endif
if mem2 == 4:
	jump k
endif
if mem2 == 3:
	jump l
endif
if mem2 == 2:
	jump m
endif
if mem2 == 1:
	jump n
endif
mem3 = calc 0 - 1
mem2 = calc mem2 x mem3
if mem2 == 9:
	jump o
endif
if mem2 == 8:
	jump p
endif
if mem2 == 7:
	jump q
endif
if mem2 == 6:
	jump r
endif
if mem2 == 5:
	jump s
endif
if mem2 == 4:
	jump t
endif
if mem2 == 3:
	jump u
endif
if mem2 == 2:
	jump v
endif
if mem2 == 1:
	jump w
endif
jump x
f:
step e
g:
step e
h:
step e
i:
step e
j:
step e
k:
step e
l:
step e
m:
step e
n:
step e
jump y
o:
step w
p:
step w
q:
step w
r:
step w
s:
step w
t:
step w
u:
step w
v:
step w
w:
step w
y:
x:
giveto s
jump b