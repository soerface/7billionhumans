-- 7 Billion Humans (2145) --
-- 61: Lazy Pathways --

-- Author: landfillbaby
-- Size: 11
-- Speed: 346

a:
step nw,w,sw,n,s,e
if c == datacube:
	mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem2 == datacube and
		 mem2 < mem1 or
		 mem1 != datacube:
			mem1 = set mem2
		endif
	endfor
	mem1 = calc mem1 + 1
	if c > mem1:
		pickup c
		write mem1
		drop
	endif
endif
jump a


