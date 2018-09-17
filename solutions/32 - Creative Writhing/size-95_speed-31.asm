-- 7 Billion Humans (2053) --
-- 32: Creative Writhing --

-- Author: ansvonwa
-- Size: 95
-- Speed: 31

step s
pickup c
write 99
drop
if sw == datacube:
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
	else:
		jump a
	endif
endif
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
a:
step s
pickup c
write 99
drop
step w
b:
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
jump b


