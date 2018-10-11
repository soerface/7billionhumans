-- 7 Billion Humans (2145) --
-- 55: Data Flowers --

-- Author: landfillbaby
-- Size: 8
-- Speed: 24

pickup s
a:
step n
if s != datacube:
	jump a
endif
mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
	mem2 = calc mem1 + mem2
endfor
write mem2
drop