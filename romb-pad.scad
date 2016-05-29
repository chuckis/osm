
include </home/ishchuk/OSM/osm/tu-rombs-module.scad>;
include </home/ishchuk/OSM/osm/lad-pad.scad>;

module romb_pad(){ 
	difference(){
		translate([0, 0, -0.5]) lad_pad();
		scale([1.5, 1.5, 1])translate([5.8, -5, 0])rotate ([0, 0, 55]) tu_rombs();
	}
}

romb_pad();



