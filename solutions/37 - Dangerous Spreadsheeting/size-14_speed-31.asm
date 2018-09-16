-- 7 Billion Humans (2087) --
-- 37: Dangerous Spreadsheeting --

-- Author: landfillbaby
-- Size: 14
-- Speed: 31

a:
if e == hole:
	step ne
	if se == hole:
		step e
	endif
	step se
else:
	step e
endif
if e != wall:
	if c == datacube:
		mem1 = calc mem1 + c
	endif
	jump a
endif
pickup c
write mem1
drop
