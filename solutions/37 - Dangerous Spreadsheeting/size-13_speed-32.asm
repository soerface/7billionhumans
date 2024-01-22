-- 7 Billion Humans (2235) --
-- 37: Dangerous Spreadsheeting --

-- Author: Ammmob
-- Size: 13
-- Speed: 32

a:
if e == hole:
	step se
	if ne == hole:
		step e
	endif
	step ne
else:
	step e
endif
if e != wall:
	mem1 = calc mem1 + c
	jump a
endif
pickup c
write mem1
drop


