//Enter OpenSCAD code here.
 echo("Version:",version());
 union(){
translate ([0, 7, 3.5]){cube([2, 15, 7], center=true);}
rotate([0, 0, 120]){ translate ([0, 7, 3.5]) {cube([2, 15, 7], center=true) ;}}
rotate([0, 0, 240]){ translate ([0, 7, 3.5]) {cube([2, 15, 7], center=true) ;}}

translate ([0,  0,  7.5]) { cylinder( r1=2.75, r2=3.5, h=15, center=true, $fn=30); }
translate ([0,  0,  15.5]) { cylinder( r1=3.5, r2=3, h=1, center=true, $fn=30); }

translate ([0,  0,  3.5]) difference(){
  cylinder( r1=15, r2=15.5, h=7, center=true, $fn=60) ;
cylinder( r=12.5, h=8.01, center=true, $fn=60);
    }
}
