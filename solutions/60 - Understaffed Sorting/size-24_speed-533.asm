-- 7 Billion Humans (2053) --
-- 60: Understaffed Sorting --

-- Author: soerface
-- Size: 24
-- Speed: 533

a:
b:
if w != wall:
	step w
	jump b
endif
mem1 = set s
step s
step s
c:
if ne < mem1:
	pickup ne
	drop
	pickup n
	step ne
	drop
	pickup sw
	step w
	drop
	step s
endif
if e != wall:
	step e
	mem1 = set n
	jump c
endif
mem1 = set n
step n
step n
jump a


