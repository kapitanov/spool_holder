include <vars.scad>

module axis_cylinder()
{      
    difference()
    {
        union()
        {
            translate([SIDE_WIDTH* 1.5 + 1,0,0])
            rotate([0,90,0])
            cylinder(h = SPOOL_WIDTH, r = INNER_R - RESERVE_R * 5);
            
            OFFSET = (SPOOL_WIDTH + RESERVE_H - 2*SIDE_WIDTH - 2) / 5;
            
            translate([SIDE_WIDTH* 1.5 + 1,0,0])
            rotate([0,90,0])
            cylinder(h = SIDE_WIDTH - 1, r = INNER_R - RESERVE_R);       
            
            translate([SIDE_WIDTH* 1.5 + 1 + SIDE_WIDTH * 2,0,0])
            rotate([0,90,0])
            cylinder(h = SIDE_WIDTH - 1, r = INNER_R - RESERVE_R);
            
            translate([SIDE_WIDTH* 1.5 + 1 + SIDE_WIDTH * 4,0,0])
            rotate([0,90,0])
            cylinder(h = SIDE_WIDTH - 1, r = INNER_R - RESERVE_R);
            
            translate([SIDE_WIDTH* 1.5 + 1 + SIDE_WIDTH * 6,0,0])
            rotate([0,90,0])
            cylinder(h = SIDE_WIDTH - 1, r = INNER_R - RESERVE_R);
            
            translate([SIDE_WIDTH* 1.5 + 1 + SIDE_WIDTH * 8,0,0])
            rotate([0,90,0])
            cylinder(h = SIDE_WIDTH - 1, r = INNER_R - RESERVE_R);
        }
        
        translate([0,0,0])
        rotate([0,90,0])
        cylinder(h = SIDE_WIDTH * 2 + SPOOL_WIDTH + RESERVE_H, r = AXIS_R - RESERVE_R + 0.25, $fn = 16);
    }
}

if(!_ASSEMBLY)
{
    axis_cylinder();
}