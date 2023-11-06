-- 7 Billion Humans (2145) --
-- 57: Neighborly Sweeper --

-- Author: landfillbaby
-- Size: 9
-- Speed: 982

a:
step nw,w,sw,n,s,ne,e,se
pickup c
mem1 = set 0
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 >= 0:
		mem1 = calc mem1 + 1
	endif
endfor
write mem1
drop
jump a


