-- 7 Billion Humans (2145) --
-- 54: Terrain Leveler --

-- Author: landfillbaby
-- Size: 92
-- Speed: 66

step n
a:
step n
if c == nothing:
	jump a
endif
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
step n
mem1 = calc mem1 + c
if w != nothing:
	pickup c
	write mem1
	drop
	step n
	listenfor coffeetime
	mem1 = set s
	step s
	step s
	b:
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
	step s
	pickup c
	write mem1
	drop
endif
step e
mem1 = calc mem1 + c
step e
mem1 = calc mem1 + c
step e
mem1 = calc mem1 + c
step e
mem1 = calc mem1 + c
step e
mem1 = calc mem1 + c
step e
mem1 = calc mem1 + c
mem1 = calc mem1 / 49
pickup c
write mem1
drop
step w
pickup c
write mem1
drop
step w
pickup c
write mem1
drop
step w
pickup c
write mem1
drop
step w
pickup c
write mem1
drop
step w
pickup c
write mem1
drop
step w
tell everyone coffeetime
jump b