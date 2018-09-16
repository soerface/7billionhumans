-- 7 Billion Humans (2053) --
-- 63: Defrag Disordered --

-- Author: ansvonwa
-- Size: 57
-- Speed: 8

step ne
step n
if c == datacube and
 nw != datacube:
	pickup c
	step n
	step n
	step n
	drop
	pickup s
	step nw
	drop
	step se
	step se
	step e
	step e
	pickup se
	step ne
	step n
	drop
	end
endif
if c != datacube and
 ne != datacube:
	step n
	pickup c
	step n
	step n
	step n
	drop
	step se
	pickup s
	step n
	step n
	drop
	end
endif
if w == datacube:
	pickup w
	step n
	step n
	step n
	drop
	step s
	pickup s
	step n
	step n
	step ne
	drop
	end
endif
pickup c
step ne
step n
step n
step n
drop
step sw
pickup s
step n
step n
drop


