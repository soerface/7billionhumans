-- 7 Billion Humans (2087) --
-- 42: Important Email Organization --

-- Author: landfillbaby
-- Size: 14
-- Speed: 353

a:
step nw,w,sw,n,ne,e,se
if c == datacube and
 s != shredder:
	pickup c
	mem1 = calc myitem / 10
	mem2 = nearest shredder
	step mem2
	b:
	if mem1 < c:
		step w
		jump b
	endif
	c:
	if mem1 > c:
		step e
		jump c
	endif
	giveto s
endif
jump a