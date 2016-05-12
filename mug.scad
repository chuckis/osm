  scale([2,2,3])
  {
    difference()
    {
      intersection()
      {
        cube([20,20,20], center=true);
        sphere(14);
      }
      translate([0,0,-10+2])
        cylinder(r=7,h=20+2);
    }
  }
