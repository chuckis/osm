//bracelet

$fa = 5;

module torusplus(){
	difference(){
			union(){
				for(i=[-90, 0, 90]){
					rotate([0 , 0, i]){cube([13, 1, 1], center=true);}}
				cylinder(h = 1, r=5,center=true);
}
		cylinder(h = 1.1, r=4,center=true);
}
}

//torusplus();

module gyro(){
for(i=[-90, 0], j=[-90, 0]){union(){
rotate([i, 0, j]){

		torusplus();
}
}
}
}

for(i=[0, 12]){
for(j=[0: 12: 72]){
	translate([i, j, 0]) gyro();
}
}

