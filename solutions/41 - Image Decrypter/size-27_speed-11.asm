-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Author: 68erDirk
-- Size: 27
-- Speed: 11

pickup w
mem1 = set myitem
if mem1 >= 8:
	mem1 = calc mem1 - 8
	step w
	step w
	step w
	step w
	step w
	step w
	step w
	step w
endif
if mem1 >= 4:
	mem1 = calc mem1 - 4
	step w
	step w
	step w
	step w
endif
if mem1 >= 2:
	mem1 = calc mem1 - 2
	step w
	step w
endif
if mem1 == 1:
	step w
endif
step w
drop
mem1 = calc mem1 / 0


