$fn=48;
diam=8;
wall=8;
height=4;
length=100;
foo=63;
clips();
module clips() {
	for(i=[1:360/3:360]) {
		rotate([0,0,i])
				clip();
	}
}
module clip() {
	translate([0,foo,0]) {
		difference() {
			cylinder(d=diam+wall,h=height);
			translate([0,0,-wall/2])
				cylinder(d=diam,h=height+wall);
			translate([0,(diam+wall)/2+diam/3,height/2])
				cube([diam+wall,diam+wall,height*2], center=true);
			}
		bar();
	};
}
module bar() {
	rotate([0,0,30])
	translate([0,-length/2-diam/2,height/2])
		cube([wall/2,length,height], center=true);
}
