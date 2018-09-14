-- 7 Billion Humans (2056) --
-- 54: Terrain Leveler --

-- Author: tiansh
-- Size: 16
-- Speed: 180

a:
step n
mem1 = calc mem1 + c
if n != wall or
 sw == datacube or
 w == worker:
	jump a
endif
mem1 = calc mem1 + sw
b:
pickup s
write mem1
step s
c:
if e == worker or
 ne == worker:
	jump c
endif
if e == datacube:
	mem1 = calc e x 49
endif
mem2 = calc mem1 / 49
write mem2
drop
jump b


