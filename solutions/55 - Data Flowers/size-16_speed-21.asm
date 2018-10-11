-- 7 Billion Humans (2145) --
-- 55: Data Flowers --

-- Author: landfillbaby
-- Size: 16
-- Speed: 21

pickup s
step n
step n
step n
if s == nothing:
	step n
	if s == nothing:
		step n
		step n
		step n
		if s == nothing:
			step n
		endif
	endif
endif
mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
	mem2 = calc mem1 + mem2
endfor
write mem2
drop