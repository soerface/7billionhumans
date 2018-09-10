-- 7 Billion Humans (2053) --
-- 56: Local Maximums --

-- Author: soerface
-- Size: 9
-- Speed: 14

step w
step w
mem1 = set w
mem2 = foreachdir nw,sw,n,s,ne,e,se:
	if mem2 > mem1:
		mem1 = set mem2
	endif
endfor
mem3 = nearest shredder
pickup mem1
giveto mem3


