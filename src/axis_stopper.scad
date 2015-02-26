include <vars.scad>

module axis_stopper()
{
    translate([0,0,0])
    rotate([0,90,0])
    difference()
    {
        cylinder(h = SIDE_WIDTH, r = AXIS_R + SIDE_WIDTH/2);
        translate([0,0,-SIDE_WIDTH])
        cylinder(h = SIDE_WIDTH * 3, r = AXIS_R - RESERVE_R, $fn = 16);
    }
}

axis_stopper();