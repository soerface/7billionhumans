-- 7 Billion Humans (2087) --
-- 18: Uniquely Disposed --

-- Author: landfillbaby
-- Size: 6
-- Speed: 12

pickup w
step sw
a:
if s == worker:
	step se
	jump a
endif
giveto s
