-- 7 Billion Humans (2056) --
-- 66: Decimal Counter --

-- Author: Kuriyama Mirai
-- Size: 138
-- Speed: 43

step s
if s == button:
	step n
	step s
	a:
	step sw
	step e
	step w
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step s
	step ne
	jump a
endif
pickup c
step s
if myitem == 1:
	drop
	pickup c
	write 2
	drop
	pickup c
	write 3
	drop
	pickup c
	write 4
	drop
	pickup c
	write 5
	drop
	pickup c
	write 6
	drop
	pickup c
	write 7
	drop
	pickup c
	write 8
	drop
	pickup c
	write 9
	drop
	pickup c
	write 0
	drop
	pickup c
	write 1
	drop
	pickup c
	write 2
	drop
	pickup c
	write 3
	drop
	pickup c
	write 4
	drop
	pickup c
	write 5
	drop
	pickup c
	write 6
	drop
	pickup c
	write 7
	drop
	pickup c
	write 8
	drop
	pickup c
	write 9
	drop
	pickup c
	write 0
	drop
	pickup c
	write 1
	drop
	pickup c
	write 2
	drop
endif
if myitem == 8:
	drop
	b:
	if e == 9:
		pickup c
		write 9
		drop
		tell everyone coffeetime
		c:
		if e == 9:
			pickup c
			write 0
		endif
		jump c
	endif
	jump b
endif
if myitem == 9:
	drop
	listenfor coffeetime
	if w != datacube:
		mem2 = set c
		step ne
		step e
		step e
		mem1 = set se
		step mem2
		d:
		if mem1 == 0:
			pickup c
		endif
		jump d
	endif
	e:
	if e == datacube:
		jump e
	endif
	pickup c
endif
if myitem == 0:
	write 1
	listenfor coffeetime
	mem2 = set c
	step se
	step e
	step e
	step e
	mem1 = set ne
	step mem2
	f:
	if mem1 == 0:
		drop
	endif
	jump f
endif


