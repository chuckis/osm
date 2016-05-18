//lapa.scad
module vyb()  { 
    rotate ([0, 15, 0]) difference () {
     cube([6, 2, 2], center=true);
     difference  (){
         cube([6, 2, 2], center=true);
         color ("red"){translate ([2, -1.2, 0.5]) rotate([-15, 0, 90]) cube([6, 2, 2]);}
        }
    }
 }
module vyblap() {
      translate([0.0626, 0, -0.0324]) color("cyan") rotate ([0, 180, 0]) translate([-1, 0, 0]) vyb();
}

module flap() {
      difference(){
//cube([6, 1.9, 1.9]);
translate([0, 0, -1]) cube([6, 1.9, 1.9], center=true);
vyblap();}
}

module slap() {
     difference(){
//cube([6, 1.9, 1.9]);
translate([0, 0, -1]) rotate([90, 0, 90])cube([6, 1.9, 1.9], center=true);
vyblap();}
}
slap();
rotate([0, 180, 0]) flap();


