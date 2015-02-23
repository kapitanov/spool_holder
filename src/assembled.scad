include <vars.scad>
use <side_support.scad>
use <connector.scad>
use <axis.scad>
use <axis_cylinder.scad>
use <pulley_mount.scad>
use <pulley.scad>

use <MCAD/hardware.scad>

%basement();
%spool();

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
    translate([-(SIDE_WIDTH + SPOOL_WIDTH + RESERVE_H),9,-20])    
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

color("White")
{   
    screw_and_nut([4,-7,-15], lenght = 10);    
    screw_and_nut([SPOOL_WIDTH + RESERVE_H + 2.5,-7,-15], lenght = 10);
    
    translate([SPOOL_WIDTH + RESERVE_H + 6.5,60,15])
    rotate([0,0,180])
    {
        screw_and_nut([4,-5,-15], lenght = 10);        
        screw_and_nut([SPOOL_WIDTH + RESERVE_H + 2.5,-5,-15], lenght = 10);
    }
    
    rotate([0,0,180])
    screw_and_nut([-29,-67.5,0], lenght = 7.5);        
    
    rotate([0,0,180])
    screw_and_nut([-64,-67.5,0], lenght = 7.5);        
    
    translate([54.5,115,0])
    rotate([0,0,90])
    screw_and_nut([0,0,0], lenght = 22);  
        
    translate([54.5,160,2.5])
    rotate([0,0,90])
    screw_and_nut([0,0,0], lenght = 22);  
}

module basement()
{
        color("Gray", 0.5)
	union()
	{
		translate([-200,0,0])
			cube(size = [400,38,5]);
		translate([-200,33,-100])
			cube(size = [400,5,100]);
	};
};

module spool()
{
    color("Gray", 0.5)
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
        }
        
        translate([SIDE_WIDTH - 20,20,10+OUTER_R+RESERVE_V])
        rotate([0,90,0])
            cylinder(h = SPOOL_WIDTH + 30 , r = INNER_R);        
    }
}

module screw_and_nut(position, lenght = 8)
{
    translate(position)
    {
        rotate([90,0,0])    
        screw(lenght, false);
    
        translate([0,lenght-2,0])
        rotate([90,0,0])    
        nut();
    }
}