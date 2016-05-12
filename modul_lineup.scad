//Enter OpenSCAD code here.
module lineup(num, space)
 { for (i = [0 : num-1]) translate([ space*i, 0, 0 ]) cube(); } 

lineup(5, 3);

 echo("Version:",version());
