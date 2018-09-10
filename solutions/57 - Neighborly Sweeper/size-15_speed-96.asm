-- 7 Billion Humans (2053) --
-- 57: Neighborly Sweeper --

-- Author: soerface
-- Size: 15
-- Speed: 96

if w == wall:
	mem4 = set 1
endif
a:
if mem4 == 1:
	step e
else:
	step w
endif
if c == datacube:
	mem2 = set 0
	mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem1 != nothing:
			mem2 = calc mem2 + 1
		endif
	endfor
	pickup c
	write mem2
	drop
endif
jump a


