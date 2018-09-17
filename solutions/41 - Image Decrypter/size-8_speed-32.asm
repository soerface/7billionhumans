-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Author: ansvonwa
-- Size: 8
-- Speed: 32

pickup w
a:
step w
if myitem > mem1:
	mem1 = calc mem1 + 1
	jump a
endif
drop
b:
step s
jump b


