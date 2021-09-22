#!/Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia

S(10^16) = 255228881 mod 10^9

S(10^4) = 112851 (26 Soln)
x:3  y:4  z:20
x:10  y:3  z:41
x:17  y:24  z:580
x:63  y:8  z:260
x:68  y:15  z:353
x:77  y:12  z:340
x:78  y:5  z:313
x:222  y:35  z:1513
x:290  y:21  z:1241
x:300  y:7  z:1201
x:301  y:60  z:3796
x:323  y:12  z:1300
x:399  y:80  z:6596
x:520  y:63  z:4481
x:561  y:40  z:2756
x:621  y:20  z:2516
x:742  y:45  z:3593
x:820  y:9  z:3281
x:943  y:48  z:4420
x:1023  y:16  z:4100
x:1752  y:55  z:7633
x:1820  y:33  z:7361
x:1830  y:11  z:7321

x:3  y:4  z:20
x:10  y:3  z:41
x:17  y:24  z:580
x:63  y:8  z:260
x:68  y:15  z:353
x:77  y:12  z:340
x:78  y:5  z:313
x:222  y:35  z:1513
x:290  y:21  z:1241
x:300  y:7  z:1201
x:301  y:60  z:3796
x:323  y:12  z:1300
x:399  y:80  z:6596
x:520  y:63  z:4481
x:561  y:40  z:2756
x:621  y:20  z:2516
x:742  y:45  z:3593
x:820  y:9  z:3281
x:943  y:48  z:4420
x:1023  y:16  z:4100
x:1752  y:55  z:7633
x:1820  y:33  z:7361
x:1830  y:11  z:7321

By a result of Berggren (1934), all primitive Pythagorean triples can be generated from the (3, 4, 5) triangle by using the three linear transformations T1, T2, T3 below, where a, b, c are sides of a triple:
	new side a 	new side b 	new side c
T1: 	a − 2b + 2c 	2a − b + 2c 	2a − 2b + 3c
T2: 	a + 2b + 2c 	2a + b + 2c 	2a + 2b + 3c
T3: 	−a + 2b + 2c 	−2a + b + 2c 	−2a + 2b + 3c

In other words, every primitive triple will be a "parent" to three additional primitive triples. Starting from the initial node with a = 3, b = 4, and c = 5, the operation T1 produces the new triple

    (3 − (2×4) + (2×5), (2×3) − 4 + (2×5), (2×3) − (2×4) + (3×5)) = (5, 12, 13),

and similarly T2 and T3 produce the triples (21, 20, 29) and (15, 8, 17).

The linear transformations T1, T2, and T3 have a geometric interpretation in the language of quadratic forms. They are closely related to (but are not equal to) reflections generating the orthogonal group of x2 + y2 − z2 over the integers.[29] 
