-- 7 Billion Humans (2145) --
-- 33: Data Backup Day --

-- Author: landfillbaby
-- Size: 8
-- Speed: 2

mem1 = nearest datacube
mem2 = set e
if mem1 > mem2:
	mem1 = set mem2
	mem2 = nearest datacube
endif
pickup mem2
write mem1
drop