// Add chassie
$fn=36;
//translate([0,80-14,0])cube([14,14,14]);


    difference(){  
    {
    chasie();
    // Add akslinger
    //translate([0,-3,1.75+.75]){ akser();}
    //translate([0,-9,1.75+.75]){ akser();}


    ///translate([5,-3,5.75]){ pegTop();}

    translate([55/2+23/2,80,1]) feetMount();
    }
    cube([80,62,10]);
}
translate([55/2+23/2,80,1]) feetMount();
module feetMount()
{
    rotate(a=[-90,0,180])
    difference(){    

    translate([1,-5,0]) {cube([21,5,14]);}
        { //Hull til føtene :)
         translate([5.75,0,0]) {cylinder(h=14,r=3.25,center=false);}
         translate([5.75+11.5,0,0]) {cylinder(h=14,r=3.25,center=false);} 

         //Inc height of arc
         translate([5.75,-0.25,0]) {cylinder(h=14,r=3.25,center=false);}
         translate([5.75+11.5,-.25,0]) {cylinder(h=14,r=3.25,center=true);} 

         
         translate([9.5,-5,0]) cube([4,5,8]);  
         
         //Hull til fot-stammen
         translate([5.75-.9,-3-3-.15,0]) {cube([2.3,4,14]);}
         translate([5.75+11.5-.9-.15,-3-3,0]) {cube([2.3,4,14]);}
        }
    }
}

module chasie()
{
difference(){
cube([55,80,1]);  // Chassie

//holes axis 1
translate([55/2,5,0]) {cylinder(h=1.25,r=1);}
translate([5,5,0]) {cylinder(h=1.25,r=1);}
translate([50,5,0]) {cylinder(h=1.25,r=1);}

//holes axis 2

translate([55/2,75,0]) {cylinder(h=1.25,r=1);}
translate([5,75,0]) {cylinder(h=1.25,r=1);}
translate([50,75,0]) {cylinder(h=1.25,r=1);}
}

//Batteri boks
translate([55/2-(32.5+2)/2+1/2,8,1]) {
difference(){ 
 translate([-1,-1,0]){  
 cube([32.5+2,57+2,5]);}  //ytre boks
 cube([32.5,57,5]);      // indre romm
}
}

}

module pegTop()
{
    cylinder(h=1.5,r=1);
    translate([0,0,1.35])
    {
        difference()
        {
           cylinder(h=1.5,r1=1.3,r2=.8);
           translate([-1.5,-.25,0]  ) {cube([3,.5,1.5]);}
         }
    
    }
}


module akser()
{
   
rotate(a=90,v=[0,1,0]){
    difference(){
    translate([-2.5,-2.5,0.0]) { cube([5,5,55]);}
    //cylinder(h=55, r=2.5, center=false);
    cylinder(h=55, r=1.5,$fn=60, center=false);
    }
}
    translate([55/2,0,2.5]){pegTop();}
    translate([5,0,2.5])   {pegTop();}
    translate([50,0,2.5])  {pegTop();}
}
