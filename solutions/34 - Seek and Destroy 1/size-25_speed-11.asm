-- 7 Billion Humans (2087) --
-- 34: Seek and Destroy 1 --

-- Author: landfillbaby
-- Size: 25
-- Speed: 11

mem1 = nearest datacube
mem2 = nearest shredder
step mem1
step n
if c < mem1:
	mem1 = nearest datacube
endif
step n
if c < mem1:
	mem1 = nearest datacube
endif
step n
if c < mem1:
	mem1 = nearest datacube
endif
step n
if c < mem1:
	mem1 = nearest datacube
endif
step n
if c < mem1:
	mem1 = nearest datacube
endif
step n
if c < mem1:
	mem1 = nearest datacube
endif
if n < mem1:
	mem1 = set n
endif
pickup mem1
giveto mem2
