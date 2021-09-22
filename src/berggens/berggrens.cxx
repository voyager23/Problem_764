/*
 * berggrens.cxx
 * 
 * Copyright 2021 Mike <mike@pop-os>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

#include "berggrens.hxx"

int main(int argc, char **argv)
{
	const UL N = 100;
	Tform current, tforms;
	const PyTpl base = {3,4,5};
	UL a,b,c;	// temp variable
	
	current.push_back(base);
	// loop start
	int loop_count = 0;
	while(loop_count < 4) {
		tforms.clear();
		for(auto t = current.begin(); t != current.end(); t++){
			a = std::get<0>(*t);
			b = std::get<1>(*t);
			c = std::get<2>(*t);
			// do T1 on *t, push_back to tforms
			tforms.push_back( {(a-2*b+2*c),(2*a-b+2*c),(2*a-2*b+3*c)} ); 
			// do T2 on *t, push_back to tforms
			tforms.push_back( {(a+2*b+2*c),(2*a+b+2*c),(2*a+2*b+3*c)} );
			// do T3 on *t, push_back to tforms
			tforms.push_back( {(-a+2*b+2*c),(-2*a+b+2*c),(-2*a+2*b+3*c)} );
		}
		// overwrite current with tforms
		// debug print of current and tforms vectors
		printf("Loop count: %d\n",loop_count);
		printf("Current vector.\n");
		for(auto p = current.begin(); p != current.end(); ++p)
			printf("{%ld,%ld,%ld}\n", std::get<0>(*p), std::get<1>(*p), std::get<2>(*p));
			
		printf("Tforms vector.\n");
		for(auto p = tforms.begin(); p != tforms.end(); ++p)
			printf("{%ld,%ld,%ld}\n", std::get<0>(*p), std::get<1>(*p), std::get<2>(*p));
		printf("\n");
			
		current = tforms;
		// analyse current for solutions to 16x^2 + y^4 = z^2
		// 	with x,y,z <= N and gcd(x,y,z) = 1
		loop_count += 1;
	}
	// if all solutions have x||y||z > N - stop
	
	return 0;
}

