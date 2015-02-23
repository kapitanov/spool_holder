include <vars.scad>

module side_support()
{
    union()
    {
        // MOUNTING
        union()
        {
            translate([0,0,5])        
                cube(size = [SIDE_WIDTH,38,5]);
            translate([0,38,5])
                cube(size = [SIDE_WIDTH,20,5]);
            translate([0,0,-5])        
                cube(size = [SIDE_WIDTH,15,5]);        
            translate([0,-5,-5])
                cube(size = [SIDE_WIDTH,5,15]);
            
            difference()
            {
                translate([0,38+20,-5])
                    cube(size = [SIDE_WIDTH,5,15]);
            
                translate([-SIDE_WIDTH/2,38+23,-5])
                    cube(size = [SIDE_WIDTH * 2,2,12.5]);                
                translate([SIDE_WIDTH/2,65,0])
                rotate([90,0,0])
                    cylinder(h = 10, r = 1.6);
            }
            
            rotate([0,0,180])
            translate([-SIDE_WIDTH,-38-20,-15])
            difference()
            {
                translate([0,38+20,-5])
                    cube(size = [SIDE_WIDTH,5,15]);
            
                translate([-SIDE_WIDTH/2,38+23,-5])
                    cube(size = [SIDE_WIDTH * 2,2,12.5]);                
                translate([SIDE_WIDTH/2,65,0])
                rotate([90,0,0])
                    cylinder(h = 10, r = 1.6);
            }
        }
        
        // AXIS SUPPORT
        difference()
        {
            translate([0,5, OUTER_R+RESERVE_V])
                cube(size = [SIDE_WIDTH,30,15]);
            translate([-SIDE_WIDTH/2,20,10+OUTER_R+RESERVE_V])
            rotate([0,90,0])
                cylinder(h = SIDE_WIDTH * 2, r = AXIS_R);
            translate([-SIDE_WIDTH/2,15, OUTER_R+RESERVE_V + AXIS_R * 2])
                cube(size = [SIDE_WIDTH * 2,AXIS_R*2,AXIS_R*2]);
        }
        
        // STAND 1
        translate([0,20,0])
        rotate([90,0,90])
	linear_extrude(height = SIDE_WIDTH)
	polygon([[-25,10],[-15,OUTER_R+RESERVE_V+15],[-10,OUTER_R+RESERVE_V], [-20, 10]]);
        
        // STAND 2                
        translate([SIDE_WIDTH,20,0])
        rotate([90,0,270])
	linear_extrude(height = SIDE_WIDTH)
	polygon([[-43,10],[-15,OUTER_R+RESERVE_V+15],[-12,OUTER_R+RESERVE_V], [-38, 10]]);
                
        // STAND CONNECTOR
        translate([SIDE_WIDTH,20,0])
        rotate([90,0,270])
	linear_extrude(height = SIDE_WIDTH)
	polygon([[-30,55],[-30,60],[17,60], [17,55]]);
    }    
}

side_support();