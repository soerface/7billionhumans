-- 7 Billion Humans (2231) --
-- 50: Cubical Communication --

-- Author: michaelgundlach
-- Size: 7
-- Speed: 73

mem2 = calc sw x 7
a:
mem2 = calc mem2 - 1
if mem2 < 5 and
 mem2 >= 0:
	takefrom s
	giveto se
	step w
endif
jump a


