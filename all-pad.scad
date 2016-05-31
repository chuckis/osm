//vneshnii kontur

CIRCLE_R =8.25;
SQUARE_H = 14;
SQUARE_W = 16.5;
l=8;
LENGTH = 21.5;
TRANSLATE_Y = LENGTH - CIRCLE_R - SQUARE_H * 0.5;

module vneshnii_pad(){
linear_extrude(height=1) {
    hull () {
        translate ([0, TRANSLATE_Y, 0]) circle ( CIRCLE_R , center=true);
        square ([ SQUARE_W, SQUARE_H ], center=true);
   }
  }
}

//boolean of pads
difference(){
         vneshnii_pad();
     linear_extrude(height=3, center=true) {
    hull () {
        translate ([0, 6.25, 0]) circle ( 7.25, center=true);
        square ([ 14.5, 12 ], center=true);
   }
  }
}

 //stavka.scad

module stavka() {
    scale([0.1, 0.1, 0.1]) 
    difference (){
      translate ([0, 0, -10]) cube ([30, 30, 20], center=true);
        union (){
               for (rot = [[0, 90, 0], [90, 0, 0], [0, 0, 90]]){ rotate(rot) cylinder(r= 7.5, h=50, fa = 20, center = true);}
     }
     }
  }

ST_WIDTH = 3;
H_W = ST_WIDTH* 0.5;
for(xyz = [[-8.2 + H_W, -7 + H_W, 2],
                    [-8.2 + H_W, 7 - H_W, 2], 
                    [8.2 - H_W, 7 - H_W, 2] ,
                    [8.2 - H_W, -7 + H_W, 2]]) {
        translate (xyz) {
               stavka();
      }
}

//upper-cube.scad


INCL = 3.2; // inner cube length
INCW = 2; // inner cube width
INCH = 2; // inner cube height

THIKNESS = 0.9;

OCL = INCL + THIKNESS * 2  ; // outer cube length
OCW = INCW + THIKNESS * 2 ; // outer cube width
OCH = 2; // outer cube height

module upp_cube() {
    difference() {
            cube([OCW, OCL, OCH], center= true);
            cube([ INCW, INCL, INCH + 1], center= true);
     }
}

translate ([0, 14, 1]) upp_cube();

