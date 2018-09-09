-- 7 Billion Humans (2053) --
-- 33: Data Backup Day --

-- Author: tiansh
-- Size: 9
-- Speed: 2

if w > e:
	mem1 = set e
	step w
else:
	mem1 = set w
	step e
endif
pickup c
write mem1
drop


