-- 7 Billion Humans (2145) --
-- 63: Defrag Disordered --

-- Author: davidgauch
-- Size: 27
-- Speed: 11

mem1 = nearest datacube
pickup mem1
step nw
step n
step n
step n
drop
if myitem == datacube:
	step e
	jump a
endif
step se
step s
mem1 = nearest datacube
pickup mem1
step n
drop
a:
step e
drop
if myitem != datacube and
 s == nothing:
	step se
	if s != datacube:
		step e
	endif
	pickup s
	step ne
	step n
endif
step n
drop


