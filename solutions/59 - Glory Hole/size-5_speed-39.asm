-- 7 Billion Humans (2212:2214M) --
-- 59: Glory Hole --

-- Author: std4453
-- Size: 5
-- Speed: 39

mem1 = nearest datacube
a:
step mem1
mem1 = foreachdir nw,w,sw,n,s,ne,se:
	if c == 1 and
	 mem1 == hole or
	 c > mem1:
		jump a
	endif
endfor


