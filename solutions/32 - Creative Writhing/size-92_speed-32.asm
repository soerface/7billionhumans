-- 7 Billion Humans (2053) --
-- 32: Creative Writhing --

-- Author: ansvonwa
-- Size: 92
-- Speed: 32

step s
pickup c
write 99
drop
if w == datacube:
	step w
	pickup c
	write 99
	drop
	step s
	pickup c
	write 99
	drop
	step s
	pickup c
	write 99
	drop
	step e
	pickup c
	write 99
	drop
	step s
	pickup c
	write 99
	drop
	jump a
endif
if sw == datacube:
	step s
	pickup c
	write 99
	drop
	step w
	pickup c
	write 99
	drop
	step s
	pickup c
	write 99
	drop
endif
step s
pickup c
write 99
drop
step e
pickup c
write 99
drop
a:
step s
pickup c
write 99
drop
step s
pickup c
write 99
drop
step w
pickup c
write 99
drop
step s
pickup c
write 99
drop
step s
pickup c
write 99
drop
if s == datacube:
	step s
	pickup c
	write 99
	drop
endif
step e
pickup c
write 99
drop
step s
pickup c
write 99
drop
step s
pickup c
write 99
drop
step w
pickup c
write 99
drop
step s
pickup c
write 99
drop


