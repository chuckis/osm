// The code below was automatically
// generated to link an external file.
// 
// An external editor may be used
// to modify the linked file in
// lieu of the ScorchCAD editor.
include </home/ishchuk/OSM/osm/lad-cube.scad>;

module lad_rombs() {
for(i= [1 : 30]){
translate ([0, i - (i * 0.3), 0]) one_romb();
   }
}

module tu_rombs(){
translate([10, -5, 0]) rotate([0, 0, 70]) lad_rombs();
translate([-10, 0, 0]) lad_rombs();
}

//tu_rombs();

