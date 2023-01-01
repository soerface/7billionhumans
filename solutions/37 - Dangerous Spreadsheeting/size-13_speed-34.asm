-- 7 Billion Humans (2235) --
-- 37: Dangerous Spreadsheeting --

-- Author: landfillbaby
-- Size: 13
-- Speed: 34

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
mem1 = calc mem1 + c
if e != wall:
	jump a
endif
pickup c
write mem1
drop


