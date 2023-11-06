-- 7 Billion Humans (2087) --
-- 42: Important Email Organization --

-- Author: landfillbaby
-- Size: 24
-- Speed: 156
-- Speed Tests: 154, 157, 158, 156, 156, 159, 156, 156, 155, 155

mem1 = nearest datacube
step mem1
a:
pickup c
mem1 = calc myitem / 10
mem2 = nearest shredder
step mem2
b:
c:
mem2 = nearest datacube
if mem1 < mem2:
	step w
	jump c
endif
if mem1 > mem2:
	step e
	jump b
endif
giveto s
d:
step n
e:
step n
if c != datacube:
	if n != wall:
		jump e
	endif
	mem1 = nearest datacube
	step mem1
	if c != datacube or
	 s == shredder:
		jump d
	endif
endif
jump a


