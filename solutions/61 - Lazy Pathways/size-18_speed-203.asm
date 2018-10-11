-- 7 Billion Humans (2145) --
-- 61: Lazy Pathways --

-- Author: landfillbaby
-- Size: 18
-- Speed: 203

a:
mem4 = nearest datacube
step mem4
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 == datacube and
	 mem2 < mem1 or
	 mem1 != datacube:
		mem1 = set mem2
	endif
	if mem2 == 99:
		mem3 = set mem2
	endif
endfor
mem1 = calc mem1 + 1
if mem4 > mem1:
	pickup c
	write mem1
	drop
endif
if mem3 == 99:
	step mem3
	mem3 = set 0
else:
	step nw,w,sw,n,s,e
endif
jump a