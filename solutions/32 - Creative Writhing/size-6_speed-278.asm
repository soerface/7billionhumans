-- 7 Billion Humans (2144) --
-- 32: Creative Writhing --

-- Author: Azagal258
-- Size: 6
-- Speed: 278

a:
step nw,w,sw,n,s,ne,e,se
if c == datacube and
 c != 99:
	pickup c
	write 99
	drop
endif
jump a


