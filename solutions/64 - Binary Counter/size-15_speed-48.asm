-- 7 Billion Humans (2145) --
-- 64: Binary Counter --

-- Author: davidgauch
-- Size: 15
-- Speed: 48

step s
pickup c
a:
step s
if myitem != datacube:
	tell nw go
	step n
	listenfor ready
	jump a
endif
b:
listenfor go
tell everyone ready
drop
listenfor go
tell w go
pickup c
jump b


