-- 7 Billion Humans (2056) --
-- 15: Shred Lines --

-- Target Size: 9
-- Size: 36
-- Target Speed: 23
-- Speed: 18

step n
a:
if n != datacube:
	step n
	jump a
endif
pickup n
step s
b:
if s != shredder:
	step s
	jump b
endif
giveto s
step n
step n
c:
if n != datacube:
	step n
	jump c
endif
pickup n
step s
step s
d:
if s != shredder:
	step s
	jump d
endif
giveto s
step n
step n
step n
step n
if n != datacube:
	step n
endif
pickup n
step s
step s
step s
step s
if s != shredder:
	step s
endif
giveto s