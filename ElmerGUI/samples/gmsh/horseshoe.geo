a=0.03;
b=0.3;
Point(1) = {0, 0.2, 0, a};
Point(2) = {0, 0.4, 0, a};
Point(3) = {0.4, 0.4, 0, a};
Point(4) = {0.4, 0.2, 0, a};
Point(5) = {0.6, 0.2, 0, a};
Point(6) = {0.6, 0.4, 0, a};
Point(7) = {0, -0.4, 0, a};
Point(8) = {0, -0.2, 0, a};
Point(9) = {0.4, -0.2, 0, a};
Point(10) = {0.4, -0.4, 0, a};
Point(11) = {0.6, -0.4, 0, a};
Point(12) = {0.6, -0.2, 0, a};
Point(13) = {0.8, 0, 0, a};
Point(14) = {1, 0, 0, a};
Point(15) = {1, 0.4, 0, a};
Point(16) = {1, -0.4, 0, a};
Point(17) = {0.8, -0.2, 0, a};
Point(18) = {0.8, 0.2, 0, a};
Point(19) = {0, 0, 0, a};
Point(20) = {3, 0, 0, b};
Point(21) = {-3, 0, 0, b};
Point(22) = {0, -3, 0, b};
Point(23) = {0, 3, 0, b};
Line(1) = {1, 4};
Line(2) = {4, 3};
Line(3) = {3, 2};
Line(4) = {2, 1};
Line(5) = {8, 7};
Line(6) = {7, 10};
Line(7) = {10, 9};
Line(8) = {9, 8};
Line(9) = {4, 5};
Line(10) = {3, 6};
Line(11) = {9, 12};
Line(12) = {10, 11};
BSpline(13) = {6, 15, 14, 14, 16, 11};
BSpline(14) = {5, 18, 13, 17, 12};
Circle(15) = {21, 19, 22};
Circle(16) = {22, 19, 20};
Circle(18) = {20, 19, 23};
Circle(19) = {23, 19, 21};
Line Loop(21) = {3, 4, 1, 2};
Plane Surface(21) = {21};
Line Loop(23) = {13, -12, 7, 11, -14, -9, 2, 10};
Plane Surface(23) = {23};
Line Loop(25) = {8, 5, 6, 7};
Plane Surface(25) = {25};
Line Loop(28) = {18, 19, 15, 16, -4, -3, 10, 13, -12, -6, -5, -8, 11, -14, -9, -1};
Plane Surface(28) = {28}; 
