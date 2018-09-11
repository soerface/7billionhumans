-- 7 Billion Humans (2053) --
-- 59: Glory Hole --

-- Author: soerface
-- Size: 6
-- Speed: 13

mem1 = set 99
a:
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem1 == 1 and
	 mem2 == hole or
	 mem2 < mem1:
		mem1 = set mem2
		step mem1
		jump a
	endif
endfor


