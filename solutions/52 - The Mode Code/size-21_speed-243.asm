-- 7 Billion Humans (2144) --
-- 52: The Mode Code --

-- Author: soerface
-- Size: 21
-- Speed: 243

mem4 = nearest datacube
a:
if w == worker:
	listenfor ok
	mem1 = calc mem1 + 1
	jump a
endif
tell everyone ok
b:
c:
step w
if w != wall and
 w != hole:
	jump b
endif
step n
if n == wall:
	pickup mem4
	write mem2
	drop
	end
endif
d:
step e
if c != datacube:
	jump c
endif
if c == mem1:
	mem2 = calc mem2 + 1
endif
jump d


