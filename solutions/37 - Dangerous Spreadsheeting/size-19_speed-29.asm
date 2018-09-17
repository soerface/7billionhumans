-- 7 Billion Humans (2053) --
-- 37: Dangerous Spreadsheeting --

-- Author: ansvonwa
-- Size: 19
-- Speed: 29

step e
step e
mem1 = calc w + c
a:
mem2 = set e
if mem2 == hole:
	step ne
	mem2 = set se
	if mem2 == hole:
		step e
		mem2 = set se
	endif
	step se
else:
	step e
endif
mem1 = calc mem2 + mem1
if mem2 != wall:
	jump a
endif
pickup c
write mem1
drop


