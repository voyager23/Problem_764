#!/home/mike/julia-1.6.2/bin/julia

using Printf

const N = 1000

function limits()
	r = 2
	while (((r^2/2)+r+1) < N)
		r += 2
	end
	@printf("N: %d    r: %d\n",N,r)
end

function full_search(N)
	for x in 1:N
		for y in 1:N
			if((x+y)>N) break end
			if(gcd(x,y)!=1) continue end
			for z in 1:N
				if((x+y+z)>N) break end
				if(gcd(x,y,z)!=1) continue end
				# Possible Solution
				if (16*x*x + y*y*y*y)==(z*z)
					@printf("x:%d  y:%d  z:%d\n",x,y,z)
				end #if				
			end #z
		end #y
	end #x
end #full_search

function verify(x,y,z)

	p = 16*x*x
	q = y*y*y*y
	r = z*z
	
	@printf("x:%d y:%d z:%d ",x,y,z)
	if((p+q)==r)
		@printf("is valid.\n")
		return true
	else
		@printf("invalid.\n")
		return false
	end
end
		
	

#-----Main-----
	verify(3,4,20)
	verify(10,3,41)
	verify(68,15,353)
	verify(323,12,1300)
	verify(323,12,1301)
	
