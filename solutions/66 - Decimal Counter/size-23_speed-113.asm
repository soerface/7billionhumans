-- 7 Billion Humans (2212:2214M) --
-- 66: Decimal Counter --

-- Author: DeepAQ
-- Size: 23
-- Speed: 113

step s
step s
if c == button:
	a:
	step n
	listenfor ok
	step s
	jump a
endif
pickup n
mem1 = set myitem
b:
tell everyone ok
drop
mem1 = calc mem1 + 1
if se != button:
	listenfor go
endif
if mem1 > 9:
	tell w go
	mem1 = set 0
	if se == button:
		mem1 = set 1
	endif
	listenfor ok
endif
pickup c
write mem1
jump b


