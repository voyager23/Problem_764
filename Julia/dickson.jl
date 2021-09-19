#!/Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia

using Printf

function perfect_square(n)
	s = floor(sqrt(n))
	return((s*s)==n)
end

for r in 2:2:50
	# @printf("%d\n",r)
	r2 = (r*r)/2
	# find s and t which are factors of r^2 / 2
	# x = r+s   y = r+t   z = r+s+t
	
	limit = Int(floor(sqrt(r2)))
	s = 1
	while(s <= limit)
		if((r2 % s)==0)
			t = r2/s
			x = r+s
			y = r+t
			z = r+s+t
			if(((perfect_square(x))&&((y % 4)==0))||((perfect_square(y))&&((x % 4)==0)))
				@printf("%d %d %d\n", x, y, z)
			end
		end
		s += 1
	end
end

