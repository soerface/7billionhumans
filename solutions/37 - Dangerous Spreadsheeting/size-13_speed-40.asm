-- 7 Billion Humans (2053) --
-- 37: Dangerous Spreadsheeting --

-- Author: ansvonwa
-- Size: 13
-- Speed: 40

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
mem1 = calc c + mem1
if e != wall:
	jump a
endif
pickup c
write mem1
drop


