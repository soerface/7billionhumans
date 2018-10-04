-- 7 Billion Humans (2053) --
-- 60: Understaffed Sorting --

-- Author: ansvonwa
-- Size: 219
-- Speed: 107
-- Speed Tests: 111, 107, 104, 107, 108, 109, 104, 105
-- Success Rate: 188/200

if w == worker:
	step se
else:
	step sw
endif
step e
mem1 = set w
mem2 = set c
mem3 = set e
if mem1 > mem2 or
 mem1 > mem3:
	mem4 = set mem1
	pickup w
	step n
	drop
	if mem2 < mem1 and
	 mem2 < mem3:
		pickup s
		step sw
		drop
		step e
		if mem1 <= mem3:
			comment 0
			mem1 = set mem2
			mem2 = set mem4
			pickup n
			drop
		else:
			pickup e
			drop
			pickup n
			step e
			drop
			mem1 = set mem2
			mem2 = set mem3
			mem3 = set mem4
			comment 3
			step w
		endif
	else:
		mem1 = set mem3
		pickup se
		step sw
		drop
		step e
		if mem4 > mem2:
			mem3 = set mem4
			pickup n
			step e
			drop
			step w
		else:
			mem3 = set mem2
			mem2 = set mem4
			pickup c
			step e
			drop
			step w
			pickup n
			drop
		endif
	endif
else:
	if mem2 > mem3:
		pickup e
		step n
		drop
		step se
		pickup w
		drop
		step w
		pickup n
		drop
		mem4 = set mem2
		mem2 = set mem3
		mem3 = set mem4
	endif
endif
step e
a:
comment 2
b:
mem4 = set e
if mem4 < mem3 and
 mem4 != worker:
	pickup e
	if myitem == nothing:
		step mem3
		jump b
	endif
	step n
	drop
	if mem4 < mem1:
		step mem2
		pickup w
		mem1 = set myitem
		if mem1 == nothing:
			c:
			jump d
		endif
		if mem1 > mem2:
			step w
			drop
			step e
			jump c
		endif
		step n
		drop
		pickup mem4
		step mem2
		step w
		drop
		step mem3
		step e
		pickup w
		drop
		step w
		pickup w
		drop
		step w
		pickup n
		drop
		mem1 = set mem4
		mem4 = set mem3
		mem3 = set mem2
		mem2 = set c
	else:
		if mem4 < mem2:
			d:
			pickup mem3
			step e
			drop
			step w
			pickup w
			drop
			step w
			pickup ne
			drop
			mem4 = set mem3
			mem3 = set mem2
			mem2 = set c
		else:
			comment 1
			pickup mem3
			step e
			drop
			step w
			pickup n
			drop
			mem4 = set mem3
			mem3 = set c
			step w
		endif
	endif
else:
	step w
endif
jump e
e:
step sw
step w
if w == wall:
	if n > ne:
		step n
		pickup c
		step n
		drop
		step s
		pickup e
		drop
		step e
		pickup nw
		drop
		step s
	else:
		step e
	endif
else:
	step e
endif
step ne
f:
mem1 = set w
if mem1 > mem2 and
 mem1 != worker:
	pickup w
	if myitem == nothing:
		step mem2
		jump f
	endif
	step s
	drop
	if mem1 > mem4:
		step mem3
		pickup e
		mem4 = set myitem
		if mem4 == nothing:
			g:
			jump h
		endif
		if mem4 < mem3:
			step e
			drop
			step w
			jump g
		endif
		step s
		drop
		pickup mem1
		step mem3
		step e
		drop
		pickup mem2
		step w
		drop
		step e
		pickup e
		drop
		step e
		pickup s
		drop
		mem2 = set mem3
		mem3 = set mem4
	else:
		if mem1 > mem3:
			h:
			pickup mem2
			step w
			drop
			step e
			pickup e
			drop
			step e
			pickup sw
			drop
			mem4 = set mem2
			mem2 = set mem3
			mem3 = set mem1
			mem1 = set mem4
			mem4 = set e
		else:
			pickup mem2
			step w
			drop
			step e
			pickup s
			drop
			mem2 = set mem1
			step e
		endif
	endif
else:
	step e
endif
jump a


DEFINE COMMENT 0
eJzti6EKwmAYRc+7+CrWDZ1tD7Cks7ki4yoIggYNigMxmWQMGQjiwGAwGQxmn8VvewjTf8K9cC63hdEm
wsOnh6+AkTqc6PKuJw2ZK2GlGTs2HGvHllgZU/YsOVhm5FpzY8Gj+aSE9okZII25MuHb+II+ZyJdrCtS
SgpynuZe3PngcDj+zg8EPCdG;

DEFINE COMMENT 1
eJztj88rw3EYx19JjmstOcjJQf4AZxvCwhwUhU3ESfkxfdNymKchDg5aWrk4+DFcJD/aZPlVLgxLkdNy
cHJ0kpP35o9w8a5Xz+fT+/N5P88ziBTCQzs9tDBpzcyYnxgBjG4iFsKxIZzCM/oZsF5i4oA+0rqfE+Sy
YFkcP6v4VTtZoYsFxm2WCFHmzVi2OeIskpCXZI3DYt4BlRyJM2qUUid8dk6HnSr1mFF5jh0RtROW5K1z
rR/XpO2CrGV4IcVbMadJ/X3UixHzkhBpGrilkazI0UbOJvggLKbIW1j9p7SvQzXTeMzBZWOUMcyvAspr
pQQv7uJum2KLUk1ea9uaJ0lG51d2yLPHO1d82Q3fllV94NPu2eWRoOU00wtV9kyFPSnrTn1SuNjHrZxy
NrT7v/71x/oBYolsWw;

DEFINE COMMENT 2
eJxTYgACFgYHBg4GlwZeBjcGSQa3hmgGC4bpDCYNqxkMGJ4waDX8Z9ACKWNgY0hhEGbIaHBgSGooZ0gA
ykcA5SIYIGABUH4BgynDlAY/hgkNhQx9DMsYJjW8BOL/DFOgas41MDBcaJAE4iCGY0DVRxruMhxg+A/E
o2AUjIIBAQAWAyMe;

DEFINE COMMENT 3
eJztyz0KwkAUxPH/VewsJYhFCgvxCBa2kSiCW9rYTZUDqBCRfOwGK89iETyRT/EOafYHwzwezAizZcyB
iRypZWn3mj1OGwoyzsrw5Dy0sxypdKL6znC8f31lrgszbiS6k1AzVUNKy8J6RUmjks7+nZ7/beAlT69A
TxRFg/kAQZIj9g;

