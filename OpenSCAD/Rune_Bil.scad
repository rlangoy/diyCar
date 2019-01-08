// Add chassie
$fn=36;
//translate([0,80-14,0])cube([14,14,14]);


    chasie();
    // Add akslinger
    translate([0,-3,1.75+.75]){ nyAkser();}
    translate([15+1,-3,1.75+.75]){ nyAkser();}
    translate([15*2+2,-3,1.75+.75]){ nyAkser();}
    translate([0,-9,1.75+.75]){ nyAkser();}


    //Old stuf
    //translate([0,-3,1.75+.75]){ akser();}
    //translate([0,-9,1.75+.75]){ akser();}



    ///translate([5,-3,5.75]){ pegTop();}

    translate([55/2+23/2,80,1]) feetMount();

//Switch pegs
rotate(a=[0,0,90]) { union(){translate([40,-5,1]) swithPeg();} }

/*
union()
{
rotate(a=[0,0,0]) translate([40,-5,1]) translate([-6.5/2,-3/2,0]) cube([6.5,3,7]);
}*/

module swithPeg()
{
  translate([-7.5,0,0]) { pegDia1mm(); }
  translate([ 7.5,0,0]) { pegDia1mm(); }
  
}

module pegDia1mm()
{
    difference()
    {
        union()
         { translate([0,0,.4])   {  cylinder(r1=1.05,r2=0.90,h=1);}
           translate([0,0,.5*2]) {  cylinder(r1=1.10,r2=0.85,h=1);}
           translate([0,0,.5*3]) {  cylinder(r1=1.15,r2=0.80,h=1.5);}
           translate([0,0,0])    {  cylinder(r1=1.00,r2=0.85,h=3);} 
         }   
        translate([-1.5,-.25,0])   { cube([3,.5,3]); }
    }
}

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

//SwitchNob hole
translate([5,40,0]) translate([-1.5,-6.5/2,0])cube([3,6.5,3]);


 translate([17,15,0]){  
 cube([20,42,5]);}  //ytre boks


//holes front axis
translate([5,5,0]) {cylinder(h=1.25,r=1);}
translate([5+5,5,0]) {cylinder(h=1.25,r=1);}

translate([50,5,0]) {cylinder(h=1.25,r=1);}
translate([50-5,5,0]) {cylinder(h=1.25,r=1);}

//front plate - whole
translate([55/2-2.5,5,0]) {cylinder(h=1.25,r=1);}
translate([55/2+2.5,5,0]) {cylinder(h=1.25,r=1);}


//holes axis 2

//translate([55/2,75,0]) {cylinder(h=1.25,r=1);}
translate([5,75,0]) {cylinder(h=1.25,r=1);}
translate([5+5,75,0]) {cylinder(h=1.25,r=1);}

translate([50,75,0]) {cylinder(h=1.25,r=1);}
translate([50-5,75,0]) {cylinder(h=1.25,r=1);}
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
    cylinder(h=1.5,r1=.94,r2=1);
    translate([0,0,1.35])
    {
        difference()
        {
           cylinder(h=1.5,r1=1.3,r2=.8);
           translate([-1.5,-.25,0]  ) {cube([3,.5,1.5]);}
         }
    
    }
}


module nyAkser()
{
   
rotate(a=90,v=[0,1,0]){
    difference(){
    translate([-2.5,-2.5,0.0]) { cube([5,5,15]);}
    //cylinder(h=55, r=2.5, center=false);
    cylinder(h=55, r=1.5,$fn=60, center=false);
    }
}
    translate([5,0,2.5])   {pegTop();}
    translate([5+5,0,2.5])   {pegTop();}

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
