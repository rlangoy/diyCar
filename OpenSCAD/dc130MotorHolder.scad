//
//  Windows move the file Motorhalterung_S130.stl to D:/Downloads or fix
//  import("D:/Downloads/Motorhalterung_S130.stl");
//  


$fn=36;

MotorHolder3(); 
//rotate(a=[180,0,0])feetMount();

module feetMount()
{
    difference(){    

    translate([1,-5,0]) {cube([21,5,14]);}
        {translate([5.75,0,0]) {cylinder(h=14,r=3.25,center=false);}
         translate([5.75-.9,-3-3-.15,0]) {cube([2.3,4,14]);}
         translate([5.75+11.5,0,0]) {cylinder(h=14,r=3.25,center=false);}
         translate([5.75+11.5-.9-.15,-3-3,0]) {cube([2.3,4,14]);}
         translate([9.5,-5,0]) cube([4,5,8]);
       
         //Inc height of arc
         translate([5.75,-0.25,0]) {cylinder(h=14,r=3.25,center=false);}
         translate([5.75+11.5,-.25,0]) {cylinder(h=14,r=3.25,center=true);} 
  
        }
    }
}

module MotorHolder3()
{
    translate([5,21,0]) cube([13,5,2]);
    difference()
    {
    newMotorHolder2();
    translate([0,-20,12+10]){ rotate(a=[-45,0,0]) cube([25,20,40]);}

    }

}

module newMotorHolder2()
{
    difference()
    {
      newMotorHolder1();
      translate([0,-10,0]) {cube([25,10,27]);}
    }

}

module  newMotorHolder1()
{
  newMotorHolder();
  slith();
}


module newMotorHolder()
{
difference(){
   translate([0,-3,0])  { MotorHolder(); }    
   translate([6.5,0,0]) { cube([10,20,28]); }
}

}

module MotorHolder()
{
difference(){
translate([0,-15.5,0]){
//import($HOME+ "\\Motorhalterung_S130.stl");
//import("Motorhalterung_S130.stl");
//FIX: Windows trouble
import("D:/Downloads/Motorhalterung_S130.stl");

}
translate([-5,-5,-50]){ cube(50,40,30);}
}

}

module slith()
{
   //cube ([5,4,27]);
    
   translate([5.75,0,0]) {cylinder(h=27,r=3,center=false);}
   translate([5.75+11.5,0,0]) {cylinder(h=27,r=3,center=false);}   
}