-- 7 Billion Humans (2053) --
-- 41: Image Decrypter --

-- Author: 68erDirk
-- Size: 7
-- Speed: 32
-- Bad trick: Division by zero kills worker immediately --

pickup w
a:
step w
mem2 = calc mem2 + 1
if mem2 <= myitem:
	jump a
endif
drop
mem1 = calc mem1 / 0
