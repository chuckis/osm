//include </home/ishchuk/OSM/osm/romb-pad.scad>;
include </home/ishchuk/OSM/osm/lad-pad.scad>;

module pad_frame(){
	difference(){
		lad_pad();
		translate([0, 0.60, -0.1]) scale([0.8, 0.87, 1.3]) lad_pad();
	}
}
//romb_pad();
pad_frame();