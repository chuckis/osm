module torus(r1, r2) {
  rotate_extrude(convexity=36,  $fn=20)
  translate ([r2,0,0]){
  circle (r1, center=true, $fn=36);
  }
  }

difference (){
  union (){
    torus(1, 2);
    translate ([0, 0, 6]) torus(1, 2);
    translate ([0,-1,8]) rotate([75, 0, 0]) torus(0.7, 2);
    translate ([0,1,8]) rotate([-75, 0, 0]) torus(0.7, 2);
    translate ([0, 0, 6.4]) cylinder (r=2.3, h=1.2, center=true, $fn=16);

    translate ([0, 0, 2.2]) cylinder (r=2.4, h=6, center=true, $fn=16);
  };

translate ([0, 0, 2.2]) cylinder (r=2, h=8.01, center=true, $fn=16);
}
