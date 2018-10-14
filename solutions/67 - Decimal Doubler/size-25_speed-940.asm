-- 7 Billion Humans (2144) --
-- 67: Decimal Doubler --

-- Author: soerface
-- Size: 25
-- Speed: 940

step s
pickup c
if s == button:
	mem1 = set 1
	a:
	step s
	step n
	mem1 = calc mem1 x 2
	mem4 = set mem1
	b:
	mem3 = calc mem4 / 10
	mem2 = set mem3
	mem3 = calc mem3 x 10
	mem3 = calc mem4 - mem3
	mem4 = set mem2
	step w
	pickup c
	write mem3
	drop
	if mem4 != 0:
		jump b
	endif
	c:
	if s != button:
		step e
		jump c
	endif
	jump a
endif
step s
drop


