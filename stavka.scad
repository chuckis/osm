//stavka.scad

module stavka() {
     difference (){
      translate ([0, 0, -10]) cube ([20, 20, 20], center=true);
        union (){
               for (rot = [[0, 90, 0], [90, 0, 0], [0, 0, 90]]){ rotate(rot) cylinder(r= 6.5, h=50, fa = 20, center = true);}
     }
  }
}

scale([0.1, 0.1, 0.1]) stavka();


