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

Circle(10) = {2.5,0.5,0,0.1};
Circle(101) = {2.5,0.5,0,0.2};

Physical Curve(10) = {10};
Physical Curve(101) = {101};



Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {1,4};

Line Loop(11) = {1, 2, 3, 4};
Curve Loop(12) = {10};


Plane Surface(14) = {11,12};

Physical Line(1) = {1};
Physical Line(2) = {2};
Physical Line(3) = {3};
Physical Line(4) = {4};

//Physical Point(5) = {5};

Physical Surface(1) = {14};

/* Field[1] = Distance; */
/* Field[1].PointsList = {1,2,3,4,5}; */
/* Field[1].CurvesList = {101}; */
/* Field[1].Sampling = 100; */

/* Field[2] = Threshold; */
/* Field[2].InField = 1; */
/* Field[2].SizeMin = lc / 5; */
/* Field[2].SizeMax = lc / 1; */
/* Field[2].DistMin = 0.15; */
/* Field[2].DistMax = 0.5; */


/* // Let's use the minimum of all the fields as the background mesh size field */
/* Field[7] = Min; */
/* Field[7].FieldsList = {1, 2}; */
/* Background Field = 7; */


/* Mesh.MeshSizeExtendFromBoundary = 0; */
/* Mesh.MeshSizeFromPoints = 0; */
/* Mesh.MeshSizeFromCurvature = 0; */

/* Mesh.Algorithm = 6; */
