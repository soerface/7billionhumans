-- 7 Billion Humans (2145) --
-- 51: Identify Yourselves --

-- Author: landfillbaby
-- Size: 40
-- Speed: 6

pickup s
if w != worker:
	step s
	write 1
	jump a
endif
if e != worker:
	step s
	write 10
	jump b
endif
if w != worker:
	step s
	write 2
	jump c
endif
if e != worker:
	step s
	write 9
	jump d
endif
if w != worker:
	step s
	write 3
	jump e
endif
if e != worker:
	step s
	write 8
	jump f
endif
if w != worker:
	step s
	write 4
	jump g
endif
if e != worker:
	step s
	write 7
	jump h
endif
if w != worker:
	step s
	write 5
	jump i
endif
step s
write 6
a:
b:
c:
d:
e:
f:
g:
h:
i:
drop