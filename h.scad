r1=5;
r2=8;
l=23;
PI = 3.14;

hull () {
    circle (r1, center=true);
    translate ([l, 0, 0]) circle (r2, center=true);
}

function chain-length (rs, rb, len) = (PI * rs) + ( PI * rb) + 2 * (sqrt(pow(2, len) + pow(2, (rb - rs))));

echo( chain-length (r1, r2, l));