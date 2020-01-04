-- 7 Billion Humans (2144) --
-- 61: Lazy Pathways --

-- Author: dpflug
-- Size: 10
-- Speed: 908

a:
step nw,w,sw,n,s,ne,e,se
if c == datacube:
	mem2 = set c
	mem1 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem1 < mem2:
			mem2 = calc mem1 + 1
		endif
	endfor
	pickup c
	write mem2
	drop
endif
jump a
