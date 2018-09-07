-- 7 Billion Humans (2053) --
-- 43: Multiplication Table --

-- Target Size: 11
-- Size: 20
-- Target Speed: 53
-- Speed: 42

if s == wall:
	step n
endif
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
mem1 = set n
mem2 = set mem1
a:
step s
pickup c
write mem2
drop
mem2 = calc mem2 + mem1
jump a