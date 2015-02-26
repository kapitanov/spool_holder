include <vars.scad>
use <axis_stopper.scad>

module axis()
{
    translate([-SIDE_WIDTH,0,0])
    rotate([0,90,0])
    cylinder(h = SIDE_WIDTH * 4 + SPOOL_WIDTH + RESERVE_H, r = AXIS_R - RESERVE_R, $fn = 16);
}

color("Blue")
axis();

translate([-SIDE_WIDTH,0,0])
%axis_stopper();

translate([SIDE_WIDTH * 2 + SPOOL_WIDTH + RESERVE_H,0,0])
%axis_stopper();

