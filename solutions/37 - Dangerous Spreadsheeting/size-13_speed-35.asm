-- 7 Billion Humans (2144) --
-- 37: Dangerous Spreadsheeting --

-- Author: 68erDirk
-- Size: 13
-- Speed: 35

a:
if e != wall:
	if e != hole:
		step e
	else:
		step ne
		if se == hole:
			step e
		endif
		step se
	endif
	mem1 = calc mem1 + c
	jump a
endif
pickup c
write mem1
drop
