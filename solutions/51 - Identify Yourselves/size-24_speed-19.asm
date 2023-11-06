-- 7 Billion Humans (2053) --
-- 51: Identify Yourselves --

-- Author: soerface
-- Size: 24
-- Speed: 19

step s
pickup c
if w == nothing:
	write 1
	drop
	end
else:
	if e == nothing:
		write 10
		drop
		end
	else:
		write 0
	endif
endif
a:
if w != 0:
	mem1 = calc w + 1
	write mem1
	drop
	end
endif
if e != 0:
	mem1 = calc e - 1
	write mem1
	drop
	end
endif
jump a


