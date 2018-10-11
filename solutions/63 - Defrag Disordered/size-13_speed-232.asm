-- 7 Billion Humans (2145) --
-- 63: Defrag Disordered --

-- Author: landfillbaby
-- Size: 13
-- Speed: 232

a:
step n
b:
if w != hole:
	step w
	jump b
endif
c:
if myitem == datacube and
 c == nothing:
	drop
	step s
endif
if myitem == nothing and
 sw == nothing and
 s == datacube:
	pickup s
endif
if e == hole:
	jump a
endif
step e
jump c