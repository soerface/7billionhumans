-- 7 Billion Humans (2235) --
-- 15: Shred Lines --

-- Author: Ammmob
-- Size: 97
-- Speed: 12

step n
step n
if nw == datacube and
 ne == datacube:
	step n
	step n
	step n
	pickup nw
	step s
	step s
	step s
	step s
	step s
	giveto s
	step n
	step n
	step n
	step n
	pickup ne
	step s
	step s
	step s
	step s
	giveto s
	step n
	pickup ne
	step s
	giveto s
	end
endif
if n == datacube and
 e != nothing:
	step n
	step n
	step n
	pickup ne
	step s
	step s
	step s
	step s
	step s
	giveto s
	step n
	step n
	step n
	pickup nw
	step s
	step s
	step s
	giveto s
	step n
	pickup nw
	step s
	giveto s
	end
endif
if n == nothing:
	step n
	step n
	pickup n
	step s
	step s
	step s
	step s
	giveto s
	step n
	step n
	step n
	pickup ne
	step s
	step s
	step s
	giveto s
	step n
	step n
	pickup ne
	step s
	step s
	giveto s
	end
endif
step n
step n
pickup n
step s
step s
step s
step s
giveto s
step n
step n
pickup n
step s
step s
giveto s
step n
step n
pickup nw
step s
step s
giveto s
end


