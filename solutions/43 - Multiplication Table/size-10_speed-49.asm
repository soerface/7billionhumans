-- 7 Billion Humans (2053) --
-- 43: Multiplication Table --

-- Target Size: 11
-- Size: 10
-- Target Speed: 53
-- Speed: 49

a:
step n
if n != datacube or
 c != nothing or
 s != datacube:
	jump a
endif
mem1 = set n
b:
mem2 = calc mem2 + mem1
step s
pickup c
write mem2
drop
jump b