//idea: https://everythingren.com/products/white-valet-phone-dock
//GONNA GIT THIS SHIT GOOD MA DUDES
amt = 2;
res = 20;

/*MAIN SHAPE*/
baseWidth = 0;

/*PHONE SLOT INFO*/
slotWidth = 10;
slotDepth = 0; //Fill out

/*BASE SHAPE INFO*/
len = 100;
width = 100;
depth = 0;


module main(){
    roundedCube([100,100,10]);
    //phoneSlot();
}


module roundedCube(size=[1,1,1], center=false, incl=true){
    t = [0,0,0];
    if(incl){
        t = [size[2], size[2],0];
        echo(t);
    }
    echo(t);
    translate(t);
    cube([size[0]-size[2], 
          size[1]-size[2], 
          size[2]], center);
}

main();

module phoneSlot(t=[0,0,0]){
    translate(t){
        cube([len-20,slotWidth,10]);
        rotate([0,90,0]){
            translate([-5,0,0])
            cylinder(len-20, r=5, $fn=res);
            translate([-5,slotWidth,0])
            cylinder(len-20, r=5, $fn=res);
        }
        rotate([90,0,0]){
            translate([0,5,-slotWidth])
            cylinder(slotWidth, r=5, $fn=res);
            translate([len-20,5,-slotWidth])
            cylinder(slotWidth, r=5, $fn=res);
        }
        translate([0,0,5]){
            sphere(5);
            translate([0,slotWidth,0])
            sphere(5);
            translate([80,0,0])
            sphere(5);
            translate([80,slotWidth,0])
            sphere(5);
        }
    }
}