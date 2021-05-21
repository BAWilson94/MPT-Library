algebraic3d
#
# Example with two sub-domains
#
solid boxout = orthobrick (-1000, -1000, -1000; 1000, 1000, 1000) -bco=1;

solid cuthead1 = orthobrick(-2,11,-2.253;2,13,2.251);

solid cuthead2 = ellipticcylinder (-7,4, 0; 2, 0, 0; 0, 2, 0)
	and plane (0, 0, -2.253; 0, 0, -1)
	and plane (0, 0, 2.251; 0, 0, 1);

solid cuthead3 = ellipticcylinder (-7,15, 0; 2, 0, 0; 0, 2, 0)
	and plane (0, 0, -2.253; 0, 0, -1)
	and plane (0, 0, 2.251; 0, 0, 1);

solid cuthead4 = ellipticcylinder (7,15, 0; 2, 0, 0; 0, 2, 0)
	and plane (0, 0, -2.253; 0, 0, -1)
	and plane (0, 0, 2.251; 0, 0, 1);

solid cuthead5 = ellipticcylinder (7,4, 0; 2, 0, 0; 0, 2, 0)
	and plane (0, 0, -2.253; 0, 0, -1)
	and plane (0, 0, 2.251; 0, 0, 1);

solid head = orthobrick(-7,3,-1.25;7,15,1.25);

solid cutHead1 = cuthead1 or cuthead2 or cuthead3;

solid cutHead2 = cutHead1 or cuthead4  or cuthead5;

solid bow = head and not cutHead2;

solid shoulder1 = orthobrick(-4,0,-1.25;4,4,1.25);


curve2d blade1 = (18;
    -3.25,  0;
     3.25,  0;
     3.25, -2;
     1.50, -3;
     1.50, -5;
     2.75, -6;
     2.25, -7;
     2.25, -8;
     2.75, -9;
     2   ,-10;
     2   ,-12;
     3   ,-13;
     2.50,-14;
     2.50,-15;
     3   ,-16;
     1   ,-19;
    -1   ,-19;
    -3.25,-17;
    18;
    2,  1,  2;
    2,  2,  3;
    2,  3,  4;
    2,  4,  5;
    2,  5,  6;
    2,  6,  7;
    2,  7,  8;
    2,  8,  9;
    2,  9, 10;
    2, 10, 11;
    2, 11, 12;
    2, 12, 13;
    2, 13, 14;
    2, 14, 15;
    2, 15, 16;
    2, 16, 17;
    2, 17, 18;
    2, 18,  1);

curve3d extrudeBlade = (2;
    0, 0,-1.25;
    0, 0, 1.25;
    1;
    2,1,2);

solid blade2 = extrusion(extrudeBlade;blade1;0,1,0)
    and plane(0, 0,-1.25;0,0,-1)
    and plane(0, 0, 1.25;0,0,1);

solid cutblade1 = orthobrick(-1,-19.3,0.5;1, -0.01,1.252);

solid cutblade2 = orthobrick(-3.26,-19.3,-1.252;-1, 1.0,-0.5);

solid blade = blade2 and not cutblade1 and not cutblade2   -maxh=0.3;

solid shoulder = shoulder1 and not bow;

solid key = shoulder or blade or bow -maxh=0.7;


solid rest = boxout and not key;

tlo rest -transparent -col=[0,0,0];#air
tlo key -col=[0,0,1];#key -mur=1 -sig=1.5E+07

