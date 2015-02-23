include <vars.scad>

module connector()
{
    translate([0,-65,5])
    difference()
    {
        union()
        {
            translate([0,38+23,-5])
                cube(size = [SIDE_WIDTH + SPOOL_WIDTH + RESERVE_H,2,12.5]);
    
            translate([-3,38+20,-5])
                cube(size = [3,5,12.5]);    
            translate([SIDE_WIDTH, 38+20,-5])
                cube(size = [3,3,12.5]);
    
            translate([SIDE_WIDTH + SPOOL_WIDTH + RESERVE_H,38+20,-5])
                cube(size = [3,5,12.5]);       
            translate([SPOOL_WIDTH + RESERVE_H - 2, 38+20,-5])    
                cube(size = [3,3,12.5]);
        }
        
        translate([SIDE_WIDTH/2,65,0])
        rotate([90,0,0])
            cylinder(h = 10, r = 1.6);
    
        translate([SIDE_WIDTH/2 + SPOOL_WIDTH + RESERVE_H,65,0])               
            rotate([90,0,0])
            cylinder(h = 10, r = 1.6);
        
         translate([SIDE_WIDTH/2 + SPOOL_WIDTH/2 + 10 + RESERVE_H,65,0])
            rotate([90,0,0])
            cylinder(h = 10, r = 1.6);
        
        translate([SIDE_WIDTH/2 + SPOOL_WIDTH/2 - 25 + RESERVE_H,65,0])
            rotate([90,0,0])
            cylinder(h = 10, r = 1.6);
    }
}

if(!_ASSEMBLY)
{
    connector();
}