-- 7 Billion Humans (2053) --
-- 64: Binary Counter --

-- Author: soerface
-- Size: 26
-- Speed: 58

step s
if s == button:
	a:
	tell everyone go
	listenfor ok
	step s
	step n
	jump a
endif
step s
pickup n
if se == button:
	b:
	drop
	tell everyone ok
	listenfor go
	pickup c
	tell w ugh
	listenfor go
	jump b
endif
c:
listenfor ugh
if myitem == datacube:
	drop
	tell everyone ok
	listenfor go
else:
	pickup c
	tell w ugh
endif
jump c


