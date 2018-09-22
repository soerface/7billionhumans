-- 7 Billion Humans (2144) --
-- 67: Decimal Doubler --

-- Author: soerface
-- Size: 32
-- Speed: 288

step s
if s == button:
	a:
	listenfor go
	step s
	tell everyone ok
	step n
	jump a
endif
pickup c
step s
drop
tell everyone go
b:
listenfor ok
pickup c
mem1 = set myitem
mem1 = calc mem1 x 2
if mem1 >= 10:
	mem2 = set 1
	mem1 = calc mem1 - 10
else:
	mem2 = set 0
	mem1 = calc mem1 - 0
endif
write mem1
drop
step w
if c == datacube:
	pickup c
	mem1 = calc myitem + mem2
	write mem1
	drop
	tell everyone go
endif
step e
jump b


