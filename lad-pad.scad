r=8.25;
l=8;
module lad_pad(){
   linear_extrude(height=1, convexity){
      hull () {
        translate ([0, l, 0]) circle (r, fn=100, center=true);
        square (r *2, center=true);
  }
 }
}

//lad_pad();