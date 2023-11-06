-- 7 Billion Humans (2087) --
-- 25: My First Shredding Memory --

-- Author: landfillbaby
-- Size: 7
-- Speed: 131

mem1 = nearest shredder
a:
mem2 = nearest datacube
if mem2 != nothing:
	pickup mem2
	if mem2 != nothing:
		giveto mem1
		jump a
	endif
endif


