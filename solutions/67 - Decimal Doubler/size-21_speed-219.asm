-- 7 Billion Humans (2053) --
-- 67: Decimal Doubler --

-- Author: Tiza59
-- Size: 21
-- Speed: 219

step s
if s != button:
	pickup c
	mem3 = set myitem
	step s
	a:
	drop
	step se
	step nw
	mem3 = calc mem3 x 2
	if e >= 5:
		mem3 = calc mem3 + 1
	else:
		mem3 = calc mem3 + 0
	endif
	if mem3 >= 10:
		mem3 = calc mem3 - 10
	else:
		mem1 = calc 0 + 0
	endif
	pickup c
	write mem3
	jump a
endif





