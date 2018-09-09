-- 7 Billion Humans (2053) --
-- 37: Dangerous Spreadsheeting --

-- Author: soerface
-- Size: 15
-- Speed: 31

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
if e == wall:
	pickup c
	write mem1
	drop
	end
endif
if c == datacube:
	mem1 = calc mem1 + c
endif
jump a