//polyg.scad

//polygon (points= [[-1, 1] [2, 1] [3, -2] [0, -2]]);

linear_extrude (height=10) polygon(points=[[0,0],[10,0],[11,10],[1,10]]); 
//polygon([[0,0],[100,0],[130,50],[30,50]], paths=[[0,1,2,3]]); 
//polygon([[0,0],[100,0],[130,50],[30,50]],[[3,2,1,0]]); 
//polygon([[0,0],[100,0],[130,50],[30,50]],[[1,0,3,2]]); a=[[0,0],[100,0],[130,50],[30,50]]; b=[[3,0,1,2]]; 
//polygon(a); 
//polygon(a,b); 
//polygon(a,[[2,3,0,1,2]]);