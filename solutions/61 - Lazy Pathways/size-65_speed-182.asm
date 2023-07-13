-- 7 Billion Humans (2235) --
-- 61: Lazy Pathways --

-- Author: Raikoug
-- Size: 65
-- Speed: 182

step w
if s != wall and
 c == datacube:
	if c != 4:
		pickup c
		write 3
		drop
	endif
else:
	if c == datacube and
	 c == 99:
		pickup c
		write 5
		drop
	endif
endif
jump a
b:
c:
mem4 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem4 == 99:
		step mem4
		jump d
	endif
endfor
if w == wall:
	if c == 1:
		step n
	else:
		if c < 6:
			if e == 1:
				step n
			else:
				step s
			endif
		else:
			if n == wall and
			 sw == datacube:
				step s
			else:
				if s == wall and
				 nw == datacube:
					step n
				else:
					step ne,e,se
					step ne,e,se
					if e != worker:
						step e
					endif
					if e != worker:
						step e
					endif
				endif
			endif
		endif
	endif
else:
	step nw,w,sw,n,s
endif
a:
e:
d:
if c == datacube:
	if c == 1:
		jump c
	endif
	f:
	g:
	mem1 = set 99
	mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
		if mem2 < mem1:
			mem1 = set mem2
		endif
	endfor
	if mem1 < 1 or
	 mem1 > 10:
		jump f
	else:
		mem3 = calc mem1 + 1
		if mem3 == 1:
			jump g
		endif
	endif
	if c != 99:
		mem2 = calc c - mem1
		if mem2 >= 2:
			jump h
		endif
	else:
		if mem1 != 99:
			h:
			pickup c
			write mem3
			drop
		else:
			jump e
		endif
	endif
endif
jump b


