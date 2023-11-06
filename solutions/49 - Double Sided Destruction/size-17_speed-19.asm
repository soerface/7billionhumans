-- 7 Billion Humans (2053) --
-- 49: Double Sided Destruction --

-- Author: soerface
-- Size: 17
-- Speed: 19

mem1 = nearest shredder
pickup s
a:
if w != worker:
	giveto mem1
	step sw,se
	tell everyone ok
	step sw,s,se
	end
endif
if e != worker:
	giveto mem1
	step sw,se
	tell everyone go
	step sw,s,se
	end
endif
listenfor ok
listenfor go
jump a


