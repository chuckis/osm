//$fa=0.5; // default minimum facet angle is now 0.5
//$fs=0.5; // default minimum facet size is now 0.5 mm

union (){
for ( i = [0:9] ) { rotate( i*360/10, [1, 0, 0]) translate( [0, 3, 0] ) rotate ([0, 90, 0]) scale([1, 1, 0.5]) sphere(r = 1, $fn=10); }
}


 echo("Version:",version());
