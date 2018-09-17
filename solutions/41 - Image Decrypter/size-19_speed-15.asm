-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Author: ansvonwa
-- Size: 19
-- Speed: 15

pickup w
step w
mem1 = set myitem
a:
if mem1 >= 4:
	step w
	step w
	step w
	step w
	mem1 = calc mem1 - 4
	jump a
endif
if mem1 >= 2:
	step w
	step w
	mem1 = calc mem1 - 2
endif
if mem1 >= 1:
	step w
endif
drop
b:
step s
jump b


