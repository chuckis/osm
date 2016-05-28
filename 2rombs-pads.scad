// The code below was automatically
// generated to link an external file.
// 
// An external editor may be used
// to modify the linked file in
// lieu of the ScorchCAD editor.

include </home/ishchuk/OSM/osm/tu-rombs-module.scad>;

r1=8.25;
l=8;

module lad_pad(){
color("red"){
 hull () {
 translate ([0, l, 0]) circle (r1, center=true);
 square (r1*2, center=true);
    }
	}
 }

//lad_pad();
 
  difference(){
translate([0, 0, 0]) lad_pad();
  scale([1.5, 1.5, 1])translate([5.5, -5, 0])rotate ([0, 0, 55]) tu_rombs();
}


