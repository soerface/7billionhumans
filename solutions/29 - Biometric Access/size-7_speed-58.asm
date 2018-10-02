-- 7 Billion Humans (2145) --
-- 29: Biometric Access --

-- Author: landfillbaby
-- Size: 7
-- Speed: 58

mem1 = nearest shredder
mem2 = nearest datacube
a:
pickup mem2
mem2 = nearest datacube
giveto mem1
if mem2 >= 0:
	jump a
endif