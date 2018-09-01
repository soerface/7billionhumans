-- 7 Billion Humans (2053) --
-- 15: Shred Lines --

-- Target Size: 9
-- Size: 9
-- Target Speed: 23
-- Speed: 23

a:
b:
step n
if n == datacube:
	pickup n
	c:
	step s
	if s == shredder:
		giveto s
		jump a
	endif
	jump c
endif
jump b
