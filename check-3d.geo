


SetFactory("OpenCASCADE");
Cylinder(1) = {20, 20, 0, 0, 0, 12, 1.65, 2*Pi};
//+
Box(2) = {0, 0, 0, 40, 40, 30};
//+
BooleanDifference{ Volume{2}; Delete; }{ Volume{1}; Delete; }
//+
Point(2) = {20, 20,12, lc};
//+
Physical Surface(28) = {1};
//+
Physical Surface(29) = {2};
//+
Physical Surface(30) = {3};
//+
Physical Surface(31) = {4};
//+
Physical Surface(32) = {5};
//+
Physical Surface(33) = {6};
//+
Physical Surface(35) = {7};
//+
Physical Surface(36) = {8};
//+
Mesh.SaveAll=1;

