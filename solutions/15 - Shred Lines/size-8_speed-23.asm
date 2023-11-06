-- 7 Billion Humans (2087) --
-- 15: Shred Lines --

-- Author: landfillbaby
-- Size: 8
-- Speed: 23

a:
step n
if n == datacube:
	pickup n
	b:
	step s
	if s != shredder:
		jump b
	endif
	giveto s
endif
jump a


