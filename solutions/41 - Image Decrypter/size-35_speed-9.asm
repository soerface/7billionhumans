-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Target Size: 8
-- Size: 35
-- Target Speed: 15
-- Speed: 9

mem1 = set w
pickup mem1
if mem1 == 1:
	jump a
endif
if mem1 == 3:
	jump b
endif
if mem1 == 4:
	jump c
endif
if mem1 == 5:
	jump d
endif
if mem1 == 6:
	jump e
endif
if mem1 == 7:
	jump f
endif
if mem1 == 9:
	jump g
endif
if mem1 == 10:
	jump h
endif
if mem1 == 11:
	jump i
endif
step w
i:
step w
h:
step w
g:
step w
step w
f:
step w
e:
step w
d:
step w
c:
step w
b:
step w
step w
a:
step w
drop
j:
step n
jump j