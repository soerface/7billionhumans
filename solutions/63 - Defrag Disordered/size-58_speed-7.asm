-- 7 Billion Humans (2145) --
-- 63: Defrag Disordered --

-- Author: landfillbaby
-- Size: 58
-- Speed: 7

step ne
if nw == datacube and
 w != worker:
	pickup nw
	step ne
	step n
	step n
	step n
	step n
	step n
	drop
	step s
	step s
	step s
	pickup s
	step n
	jump a
endif
if e == worker:
	pickup n
	step nw
	step n
	step n
	step n
	step n
	drop
	step se
	pickup s
	drop
	step se
	pickup e
	step n
	jump b
endif
if w == worker:
	step n
	pickup n
	step ne
	step n
	step n
	step n
	step n
	drop
	step se
	step s
	step s
	pickup s
	jump c
endif
pickup n
step n
step n
step n
step n
step n
step n
drop
step se
step s
pickup sw
a:
b:
c:
step n
drop


