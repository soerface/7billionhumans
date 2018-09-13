-- 7 Billion Humans (2087) --
-- 43: Multiplication Table --

-- Author: landfillbaby
-- Size: 10
-- Speed: 48

a:
step n
if c != nothing or
 s == nothing:
	jump a
endif
mem1 = nearest datacube
b:
mem2 = calc mem2 + mem1
step s
pickup c
write mem2
drop
jump b