-- 7 Billion Humans (2144) --
-- 67: Decimal Doubler --

-- Author: mmulder135
-- Size: 47
-- Speed: 130

if s /= worker:
  c:
  d:
  step n
  if n == datacube:
    pickup n
    jump a
  endif
  if n == hole and
    w == worker and
    e == worker
      drop
      jump b
  endif
  jump c
  a:
  e:
  step s
  if s == hole or
    s == datacube
      drop
      jump d
  endif
  jump e
endif
b:
step s
step s
j:
f:
if w != hole
  step w
  jump f
endif
g:
if s != hole
  step s
  jump g
endif
step ne
if c == datacube:
	mem1 = set c
else:
	mem1 = set 99
endif
mem2 = foreachdir nw,w,sw,n,s,ne,e,se:
	if mem2 <= mem1:
		mem1 = set mem2
	endif
endfor
pickup mem1
if mem4 != datacube
  h:
  if w != hole 
    step w
    jump h
  endif
  i:
  if n != hole
    step n
    jump i
  endif
else
  step mem4
  if e == hole
    step nw
    step w
  else
    step e
  endif
endif
drop
mem4 = set c
jump j
