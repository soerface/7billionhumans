-- 7 Billion Humans (2145) --
-- 61: Lazy Pathways --

-- Author: soerface
-- Size: 11
-- Speed: 241

a:
step nw,w,sw,n,s,e
if c == datacube and
 c < 99:
	mem1 = set c
	mem2 = calc mem1 + 1
	mem3 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem3 == datacube and
		 mem3 > mem2:
			pickup mem3
			write mem2
			drop
			step mem1
		endif
	endfor
endif
jump a


