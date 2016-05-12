//tenarspheres
$fa=1; // default minimum facet angle is now 0.5
$fs=1.5; // default minimum facet size is now 0.5 mm

module tenarspheres(){
    scale([1.2, 1, 1]) union (){
             for ( i = [0:9] ) { rotate( i*360/10, [1, 0, 0]) translate( [0, 3, 0] ) rotate ([0, 90, 0]) scale([1, 1, 0.5]) sphere(r = 1, $fn=10); }
  }
}

translate ([-1, 0, 0]) rotate ([0, 90, 0]) cylinder (h=5, r=3.5);
for (i=[0:3]) { translate([ i, 0, 0]) tenarspheres(); }

 echo("Version:",version());
