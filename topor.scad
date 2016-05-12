difference (){
difference (){
translate ([2, 0, 0]) scale([1, 0.8, 1]) cube ([15, 5, 5], center=true);
scale([2, 0.8, 1]) {cylinder( r=2, h=5+1, center=true, $fn=30);}
}
translate ([2,0,0]) union(){
translate ([8, 5, 0]) rotate ([0, 0, 160])  cube (10, center=true);
translate ([8, -5, 0]) rotate ([0, 0, -160])  cube (10, center=true);
    }
}
