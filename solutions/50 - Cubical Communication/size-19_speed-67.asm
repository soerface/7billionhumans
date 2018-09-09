-- 7 Billion Humans (2053) --
-- 50: Cubical Communication --

-- Author: soerface
-- Size: 19
-- Speed: 67

if sw == 1:
	jump a
endif
if sw == 2:
	jump b
endif
if sw != 3:
	listenfor ok
endif
listenfor ok
b:
listenfor ok
a:
takefrom s
giveto se
takefrom sw
giveto se
takefrom sw
giveto se
takefrom sw
giveto se
takefrom sw
giveto se
tell everyone ok