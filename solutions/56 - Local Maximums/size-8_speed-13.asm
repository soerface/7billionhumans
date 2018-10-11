-- 7 Billion Humans (2145) --
-- 56: Local Maximums --

-- Author: landfillbaby
-- Size: 8
-- Speed: 13

mem3 = nearest shredder
step w
step w
mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem1 > mem2 or
	 mem2 != datacube:
		mem2 = set mem1
	endif
endfor
pickup mem2
giveto mem3