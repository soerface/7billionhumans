-- 7 Billion Humans (2235) --
-- 66: Decimal Counter --

-- Author: davidgauch
-- Size: 46
-- Speed: 88

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
b:
mem1 = set myitem
c:
drop
listenfor go
if mem1 < 4:
	if mem1 < 2:
		if mem1 < 1:
			mem1 = set 1
		else:
			mem1 = set 2
		endif
	else:
		if mem1 < 3:
			mem1 = set 3
		else:
			mem1 = set 4
		endif
	endif
else:
	if mem1 < 8:
		if mem1 < 6:
			if mem1 < 5:
				mem1 = set 5
			else:
				mem1 = set 6
			endif
		else:
			if mem1 < 7:
				mem1 = set 7
			else:
				mem1 = set 8
			endif
		endif
	else:
		if mem1 < 9:
			mem1 = set 9
		else:
			tell w go
			pickup c
			write 0
			jump b
		endif
	endif
endif
pickup c
write mem1
tell everyone ready
jump c


