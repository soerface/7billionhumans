-- 7 Billion Humans (2145) --
-- 32: Creative Writhing --

-- Author: landfillbaby
-- Size: 17
-- Speed: 34

a:
pickup s
write 99
drop
if sw == 0:
	step w
	jump b
endif
if se == 0:
	step e
	b:
	pickup s
	write 99
	drop
	step s
	pickup s
	write 99
	drop
endif
step s
jump a


