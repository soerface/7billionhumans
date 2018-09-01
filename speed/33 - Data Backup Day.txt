-- 7 Billion Humans (2053) --
-- 33: Data Backup Day --

-- Target Size: 8
-- Size: 9
-- Target Speed: 3
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


