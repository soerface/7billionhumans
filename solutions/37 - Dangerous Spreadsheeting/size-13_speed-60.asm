-- 7 Billion Humans (2087) --
-- 37: Dangerous Spreadsheeting --

-- Author: landfillbaby
-- Size: 13
-- Speed: 60

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
pickup c
mem1 = calc mem1 + myitem
write mem1
drop
if e != wall:
	jump a
endif
