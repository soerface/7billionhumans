-- 7 Billion Humans (2145) --
-- 61: Lazy Pathways --

-- Author: 68erDirk
-- Size: 25
-- Speed: 185 (average)


step w
step w
a:
mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem1 < 5:
		step mem1
		jump b
	endif
endfor
step w
jump a
b:
c:
mem1 = nearest datacube
mem3 = calc mem1 + 1
mem4 = set 0
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 > mem3 and
	 mem2 == datacube and
	 mem2 != worker:
		if mem2 == 99:
			mem4 = set mem2
		endif
		step mem2
		pickup c
		write mem3
		drop
		step mem1
	endif
endfor
if mem4 != 0:
	step mem4
else:
	step nw,w,sw,n,s,e
endif
jump c


