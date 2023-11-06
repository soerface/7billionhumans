-- 7 Billion Humans (2145) --
-- 51: Identify Yourselves --

-- Author: landfillbaby
-- Size: 20
-- Speed: 16

step s
pickup c
if w == nothing:
	write 1
	jump a
endif
if e == nothing:
	write 10
	jump b
endif
write 0
c:
mem1 = set w
if mem1 > 0:
	mem1 = calc mem1 + 1
	jump d
endif
mem1 = set e
if mem1 > 0:
	mem1 = calc mem1 - 1
	jump e
endif
jump c
d:
e:
write mem1
a:
b:
drop


