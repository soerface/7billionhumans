-- 7 Billion Humans (2144) --
-- 68: Goodbye, Humans! --

-- Author: soerface
-- Size: 13
-- Speed: 50

a:
if s == hole and
 w == wall and
 e == wall:
	mem1 = nearest worker
	if mem1 != worker:
		tell everyone goodbye
	endif
	step s
endif
if s == wall and
 se != wall or
 s == hole:
	step se
else:
	if s == wall:
		step sw
	else:
		step s
	endif
endif
jump a


