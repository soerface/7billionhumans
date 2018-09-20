-- 7 Billion Humans (2145) --
-- 53: 100 Cubes on the Floor --

-- Author: landfillbaby
-- Size: 84
-- Speed: 49

a:
step w
if c == nothing:
	jump a
endif
pickup c
if n == wall:
	mem1 = set 9
	jump b
endif
if s == wall:
	mem1 = set 99
	jump c
endif
d:
mem1 = set n
mem2 = set s
if mem1 == 9:
	mem1 = set 19
	jump e
endif
if mem2 == 99:
	mem1 = set 89
	jump f
endif
if mem1 == 19:
	mem1 = set 29
	jump g
endif
if mem2 == 89:
	mem1 = set 79
	jump h
endif
if mem1 == 29:
	mem1 = set 39
	jump i
endif
if mem2 == 79:
	mem1 = set 69
	jump j
endif
if mem1 == 39:
	mem1 = set 49
	jump k
endif
if mem2 == 69:
	mem1 = set 59
	jump l
endif
jump d
b:
c:
e:
f:
g:
h:
i:
j:
k:
l:
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop
step w
pickup c
mem1 = calc mem1 - 1
write mem1
drop