-- 7 Billion Humans (2053) --
-- 61: Lazy Pathways --

-- Author: soerface
-- Size: 13
-- Speed: 346

a:
b:
step nw,w,sw,n,s,e
if c == datacube:
	mem1 = set 99
	mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem2 == datacube and
		 mem2 < mem1:
			mem1 = set mem2
		endif
	endfor
	mem1 = calc mem1 + 1
	if c <= mem1:
		jump b
	endif
	pickup c
	write mem1
	drop
endif
jump a


