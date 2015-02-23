include <vars.scad>

module axis()
{
    translate([0,0,0])
    rotate([0,90,0])
    cylinder(h = SIDE_WIDTH * 2 + SPOOL_WIDTH + RESERVE_H, r = AXIS_R - RESERVE_R, $fn = 16);
}

if(!_ASSEMBLY)
{
    axis();
}