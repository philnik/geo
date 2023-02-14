// Gmsh project created on Sat Jun 25 12:17:43 2022
SetFactory("OpenCASCADE");


lc = 0.5;

//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0, 1, 0, lc};
//+
Point(3) = {5, 1, 0, lc};
//+
Point(4) = {5, 0, 0, lc};
//+
Point(5) = {2.5, 0.5, 0, lc};
//+
Point(6) = {1.5, 0.5, 0, lc};

Point(7) = {3.5, 0.5, 0, lc};


MeshSize {1:4} = lc;

Circle(100) = {2.5,0.5,0,0.1};
Circle(101) = {2.5,0.5,0,0.20};
Circle(102) = {2.5,0.5,0,0.30};
Circle(103) = {2.5,0.5,0,0.40};

Physical Curve(100) = {100};
Physical Curve(101) = {101};
Physical Curve(102) = {102};
Physical Curve(103) = {103};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {1,4};

Line Loop(11) = {1, 2, 3, 4};
Curve Loop(12) = {100};

Plane Surface(14) = {11,12};

Physical Line(1) = {1};
Physical Line(2) = {2};
Physical Line(3) = {3};
Physical Line(4) = {4};

Physical Curve(104) = {11};

Physical Surface(105) = {14};


Physical Point(5) = {5};

Field[1] = Distance;
Field[1].PointsList = {4};
Field[1].CurvesList = {102};
Field[1].Sampling = 100;

Field[2] = Threshold;
Field[2].InField = 1;
Field[2].SizeMin = lc / 1;
Field[2].SizeMax = lc / 1;
Field[2].DistMin = 0.1;
Field[2].DistMax = 0.1;


/* // Let's use the minimum of all the fields as the background mesh size field */
/* Field[7] = Min; */
/* Field[7].FieldsList = {1, 2}; */
/* Background Field = 7; */


/* Mesh.MeshSizeExtendFromBoundary = 0; */
/* Mesh.MeshSizeFromPoints = 0; */
/* Mesh.MeshSizeFromCurvature = 0; */
Mesh.MeshSizeFromPoints = 0;
Mesh.MeshSizeFromCurvature = 0;
Mesh.MeshSizeExtendFromBoundary = 0;


Mesh.Algorithm = 4;

Mesh.SmoothRatio = 3;
Mesh.AnisoMax = 10;
Mesh.Algorithm = 7;

Mesh.ElementOrder = 2;
Mesh.HighOrderOptimize = 2;

Mesh.SaveAll;
Mesh 2;
RefineMesh;
RefineMesh;
RefineMesh;
RecombineMesh;
RecombineMesh;
RecombineMesh;
RefineMesh;


