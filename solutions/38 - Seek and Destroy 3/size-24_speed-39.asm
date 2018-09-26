-- 7 Billion Humans (2053) --
-- 38: Seek and Destroy 3 --

-- Author: soerface
-- Size: 24
-- Speed: 39
-- Speed Tests: 39, 39, 39
-- Success Rate: 48/50

mem2 = set nothing
a:
step n
if c < mem2 or
 mem2 == nothing and
 c == datacube:
	mem2 = set c
endif
if n == wall:
	if mem2 == nothing:
		mem1 = nearest shredder
		step e
		b:
		c:
		if e == nothing:
			if se == nothing:
				pickup mem2
				giveto mem1
			endif
			jump c
		endif
		step e
		if c < mem2 or
		 mem2 == nothing:
			mem2 = set c
		endif
		jump b
	endif
	mem3 = set n
	pickup mem2
	step mem3
	drop
	end
else:
	jump a
endif
