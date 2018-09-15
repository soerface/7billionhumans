-- 7 Billion Humans (2053) --
-- 20: Reverse Line --

-- Author: ansvonwa
-- Size: 40
-- Speed: 5

step s
pickup c
if e != worker:
	step sw
	step w
	step w
	a:
	step w
	step w
	b:
	step w
	step nw
	drop
	end
	drop
endif
if w != worker:
	step ne
	step e
	step e
	c:
	step e
	step e
	d:
	step e
	step se
	drop
	end
endif
if e != worker:
	step sw
	jump a
endif
if w != worker:
	step ne
	jump c
endif
if e != worker:
	step sw
	jump b
endif
if w != worker:
	step ne
	jump d
endif
if e != worker:
	step w
else:
	step e
endif
drop


