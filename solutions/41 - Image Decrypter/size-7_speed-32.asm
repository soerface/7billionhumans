-- 7 Billion Humans (2231) --
-- 41: Image Decrypter --

-- Author: jheden
-- Size: 7
-- Speed: 32

pickup w
a:
step w
mem1 = calc mem1 + 1
if mem1 > myitem:
	drop
	mem1 = calc 0 / 0
endif
jump a
