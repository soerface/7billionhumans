-- 7 Billion Humans (2087) --
-- 32: Creative Writhing --

-- Author: landfillbaby
-- Size: 19
-- Speed: 34

a:
pickup s
write 99
drop
if sw == 0:
	step w
else:
	if se == 0:
		step e
	else:
		jump b
	endif
endif
pickup s
write 99
drop
step s
pickup s
write 99
drop
b:
step s
jump a
