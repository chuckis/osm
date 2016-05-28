// The code below was automatically
// generated to link an external file.
// 
// An external editor may be used
// to modify the linked file in
// lieu of the ScorchCAD editor.

include </mnt/internal_sd/OSM/lad-cube.scad>;

//lad-rombs.scad
for(i= [1 : 10]){
translate ([0, i - (i * 0.3), 0]) one-romb();
}
