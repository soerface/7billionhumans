-- 7 Billion Humans (2144) --
-- 66: Decimal Counter --

-- Author: soerface
-- Size: 23
-- Speed: 140

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
	tell everyone go
endif
b:
listenfor ok
pickup c
if myitem == 9:
	tell w ok
	write 0
else:
	mem1 = calc myitem + 1
	write mem1
	tell everyone go
endif
drop
jump b


