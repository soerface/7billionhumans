-- 7 Billion Humans (2235) --
-- 66: Decimal Counter --

-- Author: davidgauch
-- Size: 65
-- Speed: 87

step s
pickup c
a:
step s
tell nw go
if myitem != datacube:
	step n
	listenfor ready
	jump a
endif
if myitem == 1 or
 myitem == 8:
	if myitem == 8:
		jump b
	endif
	jump c
endif
if myitem == 9:
	jump d
endif
e:
drop
listenfor go
pickup c
write 1
tell everyone ready
c:
drop
listenfor go
pickup c
write 2
tell everyone ready
drop
listenfor go
pickup c
write 3
tell everyone ready
drop
listenfor go
pickup c
write 4
tell everyone ready
drop
listenfor go
pickup c
write 5
tell everyone ready
drop
listenfor go
pickup c
write 6
tell everyone ready
drop
listenfor go
pickup c
write 7
tell everyone ready
drop
listenfor go
pickup c
write 8
tell everyone ready
b:
drop
listenfor go
pickup c
write 9
tell everyone ready
d:
drop
listenfor go
tell w go
pickup c
write 0
jump e


