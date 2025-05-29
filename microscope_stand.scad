difference(){
    union(){
    translate([0,0,55]) cylinder(r=27, h=5);
 //cylinder(r=28.5, h=5);
 
 cylinder(r=22.25, h=60);
        //half_circle();
 //translate([0,0,11]) cylinder(r1=15, r2=19, h=5);
 //translate([0,0,16]) cylinder(r=19, h=10);
 //translate([0,0,26]) cylinder(r1=19, r2=15, h=5);
    }
    translate([4.5,0,0]) inner_structure();
    //translate([-23,0,9])  rotate([0,90,0]) cylinder(r=3.5, h=8);
    //translate([-25.5,0,9])  rotate([0,90,0]) cylinder(r=6.5, h=4);
    translate([-13.8,0,8])  rotate([0,270,0]) cheese_head();
    //#translate([0,0,-19]) cheese_head();
     }
     
module slot(){
    difference() {
        cylinder(r=15, h=63);
        translate([0,0,-1]) cylinder(r=13, h=65);
        translate([8,0,-2])cube([9, 16, 65]);
        translate([-17,0,-2])cube([9, 16, 65]);
        translate([-15,-15,-2])cube([32, 16, 65]);
    }
}

module half_circle(){
        difference(){
         cylinder(r=17.1, h=65);   
         translate([0,-18,-3]) cube([18, 36, 65]);   
            
            }   
}

module inner_structure(){
    translate([0,0,-1]) cylinder(r=15.1, h=62);
    //translate([0,0,-1]) slot();
    translate([-21.7,-7.05,-1]) cube([7, 14.1, 62]);
   //translate([0,0,19]) cylinder(r=16, h=4.5);
    translate([0,0,-1]) half_circle();    
    }
    
    module cheese_head(){
          cylinder(r=3.5, h=8);
        translate([0,0,7.5])   cylinder(r=7, h=4);
        }

     