// Gmsh project created on Sat Jun 25 12:17:43 2022
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {40, 0, 0, 1.0};
//+
Point(3) = {0, 40, 0, 1.0};
//+
Point(4) = {40, 40, 0, 1.0};
//+
Line(1) = {3, 4};
//+
Line(2) = {4, 2};
//+
Line(3) = {1, 2};
//+
Line(4) = {3, 1};
//+
Circle(5) = {20, 20, -0, 1.65, 0, 2*Pi};
//+
//+
Curve Loop(1) = {1, 2, -3, -4};
//+
Curve Loop(2) = {5};
//+
Plane Surface(1) = {1, 2};
//+
//+
Point(6) = {8, 8, 0, 1.0};
//+
