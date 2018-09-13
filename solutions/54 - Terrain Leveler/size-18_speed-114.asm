-- 7 Billion Humans (2056) --
-- 54: Terrain Leveler --

-- Author: tiansh
-- Size: 18
-- Speed: 114

a:
step n
mem1 = calc mem1 + c
if n != wall or
 sw == datacube or
 w == worker:
	jump a
endif
pickup s
mem1 = calc mem1 + sw
write mem1
step s
b:
if e == worker or
 ne == worker:
	jump b
endif
mem1 = calc mem1 / 49
if e == datacube:
	mem1 = set e
endif
c:
write mem1
drop
step s
pickup c
jump c


