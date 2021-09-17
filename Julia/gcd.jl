#!/home/mike/julia-1.6.2/bin/julia

# for x,y,z fnd all triples 1 <= N where gcd(x,y,z) = 1
	using Printf
	
	const N = 10000

	for x in 1:N
		a = 16*x*x
		for y in 1:N
			if x == y continue end
			b = a + y*y*y*y
			for z in 1:N
				if (z != x)&&(z != y)&&(gcd(x,y,z)==1)&&(b == z*z)
					@printf("x:%d y:%d z:%d\n",x,y,z)
				end # if (z != x)
			end # z
		end # y
	end # x

