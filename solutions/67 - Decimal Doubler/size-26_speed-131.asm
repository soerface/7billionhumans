-- 7 Billion Humans (2053) --
-- 67: Decimal Doubler --

-- Author: Tiza59
-- Size: 26
-- Speed: 131

step s
if s == button:
	listenfor go
endif
pickup c
mem3 = set myitem
step s
a:
drop
step se
step nw
if mem3 == 0 or
 mem3 == 5:
	mem2 = set 0
endif
if mem3 == 1 or
 mem3 == 6:
	mem2 = set 2
endif
if mem3 == 2 or
 mem3 == 7:
	mem2 = set 4
endif
if mem3 == 3 or
 mem3 == 8:
	mem2 = set 6
endif
if mem3 == 4 or
 mem3 == 9:
	mem2 = set 8
endif
if e >= 5:
	mem3 = calc mem2 + 1
else:
	mem3 = calc mem2 + 0
endif
pickup c
write mem3
jump a



