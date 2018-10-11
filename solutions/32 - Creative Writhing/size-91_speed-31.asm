-- 7 Billion Humans (2145) --
-- 32: Creative Writhing --

-- Author: ansvonwa
-- Author: landfillbaby
-- Size: 91
-- Speed: 31

pickup s
write 99
drop
if sw == 0:
	step w
	pickup s
	write 99
	drop
	step s
	pickup s
	write 99
	drop
	step s
	pickup s
	write 99
	drop
	step e
	pickup s
	write 99
	drop
	step s
	pickup s
	write 99
	drop
	jump a
endif
step s
if sw == 0:
	pickup s
	write 99
	drop
	step w
	pickup s
	write 99
	drop
	step s
	pickup s
	write 99
	drop
	step s
endif
pickup s
write 99
drop
step e
pickup s
write 99
drop
a:
step s
pickup s
write 99
drop
step s
pickup s
write 99
drop
step w
pickup s
write 99
drop
step s
pickup s
write 99
drop
step s
pickup s
write 99
drop
if se != 0:
	step s
	pickup s
	write 99
	drop
endif
step e
pickup s
write 99
drop
step s
pickup s
write 99
drop
step s
pickup s
write 99
drop
step w
pickup s
write 99
drop
step s
pickup s
write 99
drop