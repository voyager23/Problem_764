#!/home/mike/julia-1.6.2/bin/julia

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

@printf("N:%d	rmax:%d\n",N,rmax);
solutions = 0
for r in 2:2:rmax	
	r2 = (r*r)/2		 
	# find s and t which are factors of r^2 / 2
	# xx = r+s   yy = r+t   zz = r+s+t
	
	limit = Int(floor(sqrt(r2)))
		#@printf("using r:%d  r2:%d  lim:%d\n", r, r2, limit)
	s = 1
	while(s <= limit)
		if((r2 % s)==0)
			t = r2/s
			xx = r+s
			yy = r+t
			zz = r+s+t
			if(perfect_square(yy))
				if((xx%4)==0)
					x = Int(xx/4)
					y = Int(floor(sqrt(yy)))
					z = Int(zz)
					if(gcd(x,y,z)==1)
						@printf("x:%d  y:%d  z:%d\n", (xx/4), sqrt(yy), zz)
						global solutions += 1
					end
				end
			elseif(perfect_square(xx))
				if((yy%4)==0)
					x = Int(floor(sqrt(xx)))
					y = Int(yy/4)
					z = Int(zz)
					if(gcd(x,y,z)==1)
						@printf("x:%d  y:%d  z:%d\n", (yy/4), sqrt(xx), zz)
						global solutions += 1
					end
				end
			else
				global solutions += 0
			end
		end #if...
		s += 1
	end #while...
end
@printf("Found %d solutions\n", solutions)


