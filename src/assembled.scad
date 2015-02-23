_ASSEMBLY = 1;

include <vars.scad>
include <side_support.scad>
include <connector.scad>
include <axis.scad>
include <axis_cylinder.scad>
include <pulley_mount.scad>
include <pulley.scad>

/*
basement();
spool();
*/

color("Green")
{
    side_support();
    translate([SPOOL_WIDTH + RESERVE_H,0,0])
    side_support();
}

color("Yellow")
{
    translate([0,67,-5])
    connector();
    
    rotate([0,0,180])
    translate([-(SIDE_WIDTH + SPOOL_WIDTH + RESERVE_H),7.5,-20])    
    connector();
}

color("Green")
translate([44,115,0]) 
rotate([0,0,90])
{
    pulley();
}


color("Green")
translate([44,160,2.5])   
rotate([0,0,90])
{
    pulley();
}

translate([20,65,-5])
{
    color("Magenta")
    pulley_mount();
}

translate([-SIDE_WIDTH/2,20,10+OUTER_R+RESERVE_V])
color("Magenta")
axis();

translate([-SIDE_WIDTH/2,20,10+OUTER_R+RESERVE_V])
color("Blue")
axis_cylinder();

module basement()
{
        color("Gray", 0.25)
	union()
	{
		translate([-100,0,0])
			cube(size = [200,38,5]);
		translate([-100,33,-100])
			cube(size = [200,5,100]);
	};
};

module spool()
{
    color("Gray", 0.25)
    difference()
    {
        union()
        {
            translate([SIDE_WIDTH + 1,20,10+OUTER_R+RESERVE_V])
            rotate([0,90,0])
                cylinder(h = 2, r = OUTER_R);
    
            translate([SIDE_WIDTH + SPOOL_WIDTH - 1,20,10+OUTER_R+RESERVE_V])
            rotate([0,90,0])
                cylinder(h = 2, r = OUTER_R);
    
            translate([SIDE_WIDTH,20,10+OUTER_R+RESERVE_V])
            rotate([0,90,0])
                cylinder(h = SPOOL_WIDTH, r = INNER_R + 2);
        };
        translate([SIDE_WIDTH - 5,20,10+OUTER_R+RESERVE_V])
        rotate([0,90,0])
            cylinder(h = SPOOL_WIDTH + 10 , r = INNER_R);
    }
}