#!/home/mike/julia-1.6.2/bin/julia

# Use Euclid's formula for generating Pythag. Triples

using Printf

function perfect_fourth(number)
	x = floor(sqrt(sqrt(number)))
	return (number == (x*x*x*x))
end
 
const N = 100
for n in 1:N
	n2 = n*n
	for m in (n+1):N
		m2 = m*m
		a = m2 - n2
		b = 2*m*n
		c = m2 + n2
		if(perfect_fourth(b))
			@printf("a:%d b:%d c:%d\n", a,b,c)
		end
	end
end
	

