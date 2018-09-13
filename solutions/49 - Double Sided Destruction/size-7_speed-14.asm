-- 7 Billion Humans (2087) --
-- 49: Double Sided Destruction --

-- Author: landfillbaby
-- Size: 7
-- Speed: 14

pickup s
mem1 = set w
mem2 = set e
mem4 = nearest shredder
a:
if mem1 >= 0 and
 mem2 >= 0:
	jump a
endif
giveto mem4