-- 7 Billion Humans (2053) --
-- 55: Data Flowers --

-- Author: soerface
-- Size: 10
-- Speed: 23

pickup s
step n
step n
a:
step n
if c != nothing or
 s != datacube:
	jump a
endif
mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
	mem2 = calc mem1 + mem2
endfor
write mem2
drop


