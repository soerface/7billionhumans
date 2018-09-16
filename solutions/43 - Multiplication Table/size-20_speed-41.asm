-- 7 Billion Humans (2087) --
-- 43: Multiplication Table --

-- Author: landfillbaby
-- Size: 20
-- Speed: 41

step n
step n
step n
step n
step n
step n
step n
step n
step n
step n
mem1 = nearest datacube
if mem1 == 0:
	step n
endif
mem2 = nearest datacube
a:
step s
pickup c
write mem2
drop
mem2 = calc mem2 + mem1
jump a