-- 7 Billion Humans (2235) --
-- 55: Data Flowers --

-- Author: davidgauch
-- Size: 20
-- Speed: 19

pickup s
step n
step n
step n
if s != datacube:
	step n
	if s != datacube:
		step n
		step n
		step n
		if s != datacube:
			step n
		endif
	endif
endif
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 != 0 and
	 mem1 != 0:
		mem1 = calc mem1 + mem2
	else:
		if mem2 != 0:
			mem1 = set mem2
		endif
	endif
endfor
write mem1
drop


