// Gmsh project created on Sat Jun 25 12:17:43 2022
SetFactory("OpenCASCADE");


lc = 1.0;

//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0, 4, 0, lc};
//+
Point(3) = {10, 4, 0, lc};
//+
Point(4) = {10, 0, 0, lc};
//+
//Point(5) = {4.0, 2.0, 0, lc};
//+

Circle(5) = {3.0,2.0,0,0.1};
Curve Loop(13) = {5};
Surface(15) = {13};
Physical Surface(1) = {15};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {1,4};
Line Loop(11) = {1, 2, 3, 4};
Curve Loop(12) = {11};
Plane Surface(14) = {11,12};
Physical Surface(2) = {14};


Mesh.Algorithm = 6;

Mesh.MeshSizeMax = 0.01;


Curve Loop(23) = {2, 3, -4, 1};
Curve Loop(24) = {5};
Surface(17) = {23, 24};
//+
Curve Loop(25) = {2, 3, -4, 1};
//+
Curve Loop(26) = {5};
//+
Surface(16) = {25, 26};
//+
Curve Loop(27) = {2, 3, -4, 1};
//+
Curve Loop(28) = {5};
//+
Surface(16) = {27, 28};
//+
Curve Loop(29) = {2, 3, -4, 1};
//+
Curve Loop(30) = {5};
//+
Surface(16) = {29, 30};
//+
Curve Loop(31) = {2, 3, -4, 1};
//+
Curve Loop(32) = {5};
//+
Plane Surface(16) = {31, 32};

Mesh.Algorithm = 6;

Mesh.MeshSizeMax = 0.05;

Mesh.SaveAll=1;