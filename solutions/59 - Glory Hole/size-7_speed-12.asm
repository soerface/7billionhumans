-- 7 Billion Humans (2145) --
-- 59: Glory Hole --

-- Author: landfillbaby
-- Size: 7
-- Speed: 12

mem1 = nearest datacube
step mem1
a:
mem2 = foreachdir nw,w,sw,n,s,ne,se:
	if mem1 == 1 and
	 mem2 == hole or
	 mem2 < mem1:
		mem1 = set mem2
		step mem1
		jump a
	endif
endfor