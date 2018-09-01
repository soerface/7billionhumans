-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Target Size: 8
-- Size: 8
-- Target Speed: 15
-- Speed: 69

mem1 = set w
pickup mem1
a:
step w
mem1 = calc mem1 - 1
if mem1 <= 0:
	drop
	step ne
endif
jump a