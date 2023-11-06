-- 7 Billion Humans (2087) --
-- 44: Unique Fashion Party --

-- Author: landfillbaby
-- Size: 34
-- Speed: 45

pickup s
a:
step s
if s != wall:
	jump a
endif
step e
step e
b:
step e
if se != hole:
	jump b
endif
step e
if myitem == 6:
	jump c
endif
if myitem == 5:
	jump d
endif
if myitem == 4:
	jump e
endif
if myitem == 3:
	jump f
endif
if myitem == 2:
	jump g
endif
if myitem == 1:
	jump h
endif
jump i
c:
step e
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
step n
j:
if s == myitem:
	k:
	step n
	jump k
endif
jump j


