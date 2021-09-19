#!/Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia

#=
	Limits: x,y,z <= limit
	By Dickson, x = r+s, y = r+t, z = r+s+t. From x^2 + y^2 = z^2, assume z is limiting
	Find factors s and t such that r^2 / 2 = s*t
	So (r+s+t) <= Limit. Smallest,largest factors are s*1 = (r^2)/2
	For 10^7 use rmax = 4472
	For 10^4 use rmax = 142
	For a given limit, find rmax by repeated evaluation of r + (r^2)/2 + 1 <= limit
=#

using Printf

function perfect_square(n)
	s = floor(sqrt(n))
	return((s*s)==n)
end

# -----Main Code-----
const N = 10000
rmax = 2
while (((rmax^2/2)+rmax+1) < N)
	global rmax += 2
end

for r in 2:2:rmax
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

