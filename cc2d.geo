// Gmsh project created on Sat Jun 25 12:17:43 2022
SetFactory("OpenCASCADE");


lc = 1.0;

//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0, 1, 0, lc};
//+
Point(3) = {5, 1, 0, lc};
//+
Point(4) = {5, 0, 0, lc};
//+
//Point(5) = {2.5, 0.5, 0, lc};
//+

Circle(100) = {2.5,0.5,0,0.1};
/* Circle(101) = {2.5,0.5,0,0.20}; */
/* Circle(102) = {2.5,0.5,0,0.30}; */
/* Circle(103) = {2.5,0.5,0,0.40}; */

Physical Curve(100) = {100};
/* Physical Curve(101) = {101}; */
/* Physical Curve(102) = {102}; */
/* Physical Curve(103) = {103}; */



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

//Physical Point(5) = {5};

Physical Surface(1) = {14};

/* Field[1] = Distance; */
/* //Field[1].PointsList = {1,2,3,4}; */
/* //Field[1].CurvesList = {100,101,102,103}; */
/* Field[1].CurvesList = {100}; */
/* Field[1].Sampling = 10; */

/* Field[2] = Threshold; */
/* Field[2].InField = 1; */
/* Field[2].SizeMin = lc / 2; */
/* Field[2].SizeMax = lc / 1; */
/* Field[2].DistMin = 0.1; */
/* Field[2].DistMax = 2.0; */


/* // Let's use the minimum of all the fields as the background mesh size field */
/* Field[7] = Min; */
/* Field[7].FieldsList = {1, 2}; */
/* Background Field = 7; */


/* Mesh.MeshSizeExtendFromBoundary = 0; */
/* Mesh.MeshSizeFromPoints = 0; */
/* Mesh.MeshSizeFromCurvature = 0; */

Mesh.Algorithm = 6;

Mesh.MeshSizeMax = 0.04;

