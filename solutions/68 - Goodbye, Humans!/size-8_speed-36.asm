-- 7 Billion Humans (2145) --
-- 68: Goodbye, Humans! --

-- Author: landfillbaby
-- Size: 8
-- Speed: 36

a:
if e == wall or
 e == hole or
 e == nothing:
	step sw
endif
step se
mem1 = nearest worker
if mem1 == nothing:
	tell everyone goodbye
endif
step s
jump a


