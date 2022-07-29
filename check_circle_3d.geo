// Gmsh project created on Sat Jun 25 12:17:43 2022
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
Point(11) = {0, 0, 10, 1.0};
//+
Point(2) = {40, 0, 0, 1.0};
Point(21) = {40, 0, 10, 1.0};
//+
Point(3) = {0, 40, 0, 1.0};
Point(31) = {0, 40, 10, 1.0};
//+
Point(4) = {40, 40, 0, 1.0};
Point(41) = {40, 40, 10, 1.0};
//+
Line(1) = {3, 4};
Line(11) = {31, 41};
//+
Line(2) = {4, 2};
Line(21) = {41, 21};
//+
Line(3) = {1, 2};
Line(31) = {11, 21};
//+
Line(4) = {3, 1};
Line(41) = {31, 11};
//+
Circle(5) = {20, 20, -0, 1.65, 0, 2*Pi};
//+
//+
Curve Loop(1) = {1, 2, -3, -4};
Curve Loop(11) = {11, 21, -31, -41};
//+
Curve Loop(2) = {5};
//+
Plane Surface(1) = {1, 2};
Plane Surface(11) = {11};

Extrude {0, 0, 10} {
  Surface{1}; 
}

//+
Extrude {0, 0, 10} {
  Surface{11}; 
}
