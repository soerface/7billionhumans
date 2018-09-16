-- 7 Billion Humans (2144) --
-- 66: Decimal Counter --

-- Author: soerface
-- Size: 24
-- Speed: 151

step s
if s == button:
	a:
	listenfor go
	step s
	step n
	tell w ok
	jump a
endif
pickup c
step s
drop
if se == button:
	jump b
endif
c:
listenfor ok
pickup c
if myitem == 9:
	tell w ok
	write 0
	drop
else:
	mem1 = calc myitem + 1
	write mem1
	drop
	b:
	tell everyone go
endif
jump c


