-- 7 Billion Humans (2144) --
-- 68: Goodbye, Humans! --

-- Author: Charlsyy
-- Size: 9
-- Speed: 47

a:
if s == wall and
 se != wall or
 s == hole:
	step se
endif
if s == wall:
	step sw
endif
mem1 = nearest worker
if mem1 != worker:
	tell everyone goodbye
endif
step s
jump a


