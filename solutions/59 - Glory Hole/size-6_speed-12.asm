-- 7 Billion Humans (2145) --
-- 59: Glory Hole --

-- Author: landfillbaby
-- Size: 6
-- Speed: 12

mem1 = nearest datacube
a:
step mem1
mem2 = foreachdir nw,w,sw,n,s,ne,se:
	if mem1 == 1 and
	 mem2 == hole or
	 mem2 < mem1:
		mem1 = set mem2
		jump a
	endif
endfor


