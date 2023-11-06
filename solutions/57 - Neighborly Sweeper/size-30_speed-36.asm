-- 7 Billion Humans (2145) --
-- 57: Neighborly Sweeper --

-- Author: landfillbaby
-- Size: 30
-- Speed: 36

if w == wall:
	mem4 = set 1
endif
a:
if mem4 == 1:
	step e
else:
	step w
endif
if c >= 0:
	mem1 = set 0
	mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem2 >= 0:
			if mem1 == 7:
				mem1 = set 8
			endif
			if mem1 == 6:
				mem1 = set 7
			endif
			if mem1 == 5:
				mem1 = set 6
			endif
			if mem1 == 4:
				mem1 = set 5
			endif
			if mem1 == 3:
				mem1 = set 4
			endif
			if mem1 == 2:
				mem1 = set 3
			endif
			if mem1 == 1:
				mem1 = set 2
			endif
			if mem1 == 0:
				mem1 = set 1
			endif
		endif
	endfor
	pickup c
	write mem1
	drop
endif
jump a


