-- 7 Billion Humans (2053) --
-- 32: Creative Writhing --

-- Author: ansvonwa
-- Size: 11
-- Speed: 38

a:
pickup s
write 99
drop
if sw == datacube or
 se == datacube:
	if se == datacube:
		step e
	else:
		step w
	endif
else:
	step s
endif
jump a


