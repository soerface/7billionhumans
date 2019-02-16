-- 7 Billion Humans (2144) --
-- 58: Ruhige Nachbarschaft --

mem1 = nearest wall
step mem1
if s == wall:
	if e == worker:
		step w
	endif
	a:
	step n
	b:
	step n
	if n != datacube:
		jump b
	endif
	pickup n
	step s
	step s
	drop
	jump a
endif
if n == wall:
	if w == nothing:
		step w
	endif
	c:
	step s
	d:
	step s
	if s != datacube:
		jump d
	endif
	pickup s
	step n
	step n
	drop
	jump c
endif
end


