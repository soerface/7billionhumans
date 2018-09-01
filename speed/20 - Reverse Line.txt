-- 7 Billion Humans (2053) --
-- 20: Reverse Line --

-- Target Size: 9
-- Size: 26
-- Target Speed: 11
-- Speed: 8

step s
pickup c
step s
a:
if w != worker or
 e != worker:
	if w != worker:
		b:
		step ne
		if w != worker:
			jump b
		endif
		step s
		step se
		step se
		step se
		step n
		drop
	else:
		c:
		step nw
		if e != worker:
			jump c
		endif
		step s
		step sw
		step sw
		step sw
		step n
		drop
	endif
else:
	jump a
endif


