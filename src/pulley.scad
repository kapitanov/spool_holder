include <vars.scad>

module pulley()
{
    rotate([90,0,0])
    difference()
    {
        union()
        {
            
            {
                cylinder(h = 2, r = 20);
                translate([0,0,2])
                cylinder(h = 1, r1 = 20, r2 = 22);
                translate([0,0,3])
                cylinder(h = 1, r = 22);
                translate([0,0,-1])
                cylinder(h = 1, r1 = 22, r2 = 20);
                translate([0,0,-2])
                cylinder(h = 1, r = 22);
            }
        }
        
        translate([0,0,-5])
        cylinder(h = 20, r = 1.6, $fn = 12);
        
        
        for(i = [0, 90, 180, 270])
        {
            rotate([0,0,i])
            translate([10,0,-3])
            cylinder(h = 8, r = 4);
        }
    }
    
}

color("Blue")
pulley();