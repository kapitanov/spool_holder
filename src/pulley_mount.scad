include <vars.scad>
use <pulley.scad>

module pulley_mount()
{
    difference()
    {
        union()
        {
            cube(size = [50,3,12.5]);
        }
    
        translate([SIDE_WIDTH/2 + SPOOL_WIDTH/2 + RESERVE_H - 10,10,5])
        rotate([90,0,0])
        cylinder(h = 20, r = 1.6);
        
        translate([SIDE_WIDTH/2 + SPOOL_WIDTH/2 - 45 + RESERVE_H,10,5])
        rotate([90,0,0])
        cylinder(h = 20, r = 1.6);
    }
    
    difference()
    {
        translate([17.5,0,0])    
        union()
        {
            translate([-2,0,0])
            cube(size = [5,100,12.5]);
    
            translate([12,0,0])
            cube(size = [5,100,12.5]);
        }
    
        rotate([0,0,90])
        translate([50,-24,5])    
        {
            translate([0,20,0])
            rotate([90,00,0])
            cylinder(h = 40, r = 1.6, $fn = 12);
        }
    
        rotate([0,0,90])
        translate([95,-24,7.5])    
        {
            translate([0,20,0])
            rotate([90,00,0])
            cylinder(h = 40, r = 1.6, $fn = 12);
        }
    }
}

color("Blue")
pulley_mount();

color("Green")
translate([24,50,5])
rotate([0,0,90])
pulley();

color("Green")
translate([24,95,7.5])
rotate([0,0,90])
pulley();