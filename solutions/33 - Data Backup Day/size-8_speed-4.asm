-- 7 Billion Humans (2053) --
-- 33: Data Backup Day --

-- Target Size: 8
-- Size: 8
-- Target Speed: 3
-- Speed: 4

mem1 = set w
mem2 = set e
if w > e:
	mem1 = set e
	mem2 = set w
endif
pickup mem2
write mem1
drop