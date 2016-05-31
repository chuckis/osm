
module romb() {
scale ([1, 1, 1]) rotate ([20, 0, 0]) cube([5, 4, 1], center=true);
}

//diamond_rombs.scad
module diamond(){
scale ([1, 1, 1])rotate ([0, 0, -45]) {
        for(i= [0 : 3]){
              union(){  translate ([0, i - (i * 0.3), 0]) scale ([1, 1, 0.6]) romb();}
  }
 }
}

module row_d(){
for (x=[0: 10]) {translate([x+(x * 3), 0, 0]) diamond();
  }
 }
//row_d();

module row2_d(){
for (x=[1: 10]) {translate([x+(x * 3), 7, 0]) rotate([0, 0, -180]) diamond();
  }
}
//row2_d();

module two_rows(){
	union(){
		row_d();
		row2_d();
		}
	}

for (y = [0 : 10]){
translate([0, y+(y * 9), 0]) two_rows();
}
