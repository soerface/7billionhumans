-- 7 Billion Humans (2053) --
-- 44: Unique Fashion Party --

-- Author: soerface
-- Size: 39
-- Speed: 50

pickup s
a:
step s
b:
if sw == worker:
	jump b
endif
if s != wall:
	jump a
endif
step e
step e
c:
step e
if se != hole:
	jump c
endif
step e
if myitem == 6:
	jump d
endif
if myitem == 5:
	jump e
endif
if myitem == 4:
	jump f
endif
if myitem == 3:
	jump g
endif
if myitem == 2:
	jump h
endif
if myitem == 1:
	jump i
endif
jump j
d:
step e
e:
step e
f:
step e
g:
step e
h:
step e
i:
step e
j:
step n
step n
step n
step n
step n
k:
if s == worker:
	step n
endif
jump k