-- 7 Billion Humans (2053) --
-- 30: Fill the Floor --

-- Author: soerface
-- Size: 36
-- Speed: 97

mem1 = nearest printer
if n == wall and
 w == nothing and
 e == worker:
	a:
	takefrom mem1
	step se
	step se
	step e
	step e
	step e
	b:
	if c == nothing:
		drop
		jump a
	endif
	if e == wall:
		step sw
		step w
	else:
		step e
	endif
	jump b
endif
takefrom mem1
step nw
step nw
step w
step w
c:
if c == nothing:
	jump d
endif
step s
jump c
comment 0
d:
e:
drop
mem2 = nearest datacube
takefrom mem1
step mem2
if e == printer:
	step se
	step ne
else:
	step e
endif
jump e


DEFINE COMMENT 0
eJztjk9HhHEUhZ+PkCkRGQ1p8TZGlBYjidpERMtpjMzilWSkRWkkR4vaNbMcLaJ/kmgifYB5p6JFtOrz
dH6/j5G5PK5773HOXQc0xAQ5yspRJ8zDjDNKXgXycR7xbcwUWAwzCUUlVDXNVrzPkpg6c6QssxM1q1at
ccAGe1RosMlu3B9RMlUdcqpjmpxbEzxazKvNiklpe98yYX+NTFM37LunpsYtZTOlO0q6Z0EPTnp00pP/
eXZW15ld+75yphdqemMyevUo0mPGLJFZn/nnPg1lnKjPhbmKusy+H9b9+NdQn2zzbcLtnUt90dEvHQY1
qH9Qf6o0Smc;