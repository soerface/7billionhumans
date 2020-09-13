-- 7 Billion Humans (2144) --
-- 32: Creative Writhing --

-- Author: dpflug
-- Size: 6
-- Speed: 283

a:
step nw,w,sw,n,s,ne,e,se
if c < 99:
	pickup c
	write 99
	drop
endif
jump a


