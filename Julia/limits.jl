#!/Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia

using Printf

const N = 10000
r = 2
while (((r^2/2)+r+1) < N)
	global r += 2
end
@printf("N: %d    r: %d\n",N,r)