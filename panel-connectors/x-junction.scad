/* "X" Panel connector generator by Llorenç Garcia 16/10/2024, https://github.com/Siot/designs
 *
 * Licensing: 
 * This user content is licensed under a
Creative Commons Attribution-Noncommercial-Share Alike (https://creativecommons.org/licenses/by-nc-sa/4.0/)
*/

innerDuctWidth = 5;
outerArmLength = 13.5;
wallThickness = 3;
innerWallHeight = 18;

/* [Hidden] */
fullDuctLength = outerArmLength+wallThickness+innerDuctWidth + wallThickness + outerArmLength;
fullHeight = innerWallHeight + wallThickness; 

difference() {
    
    cube([fullDuctLength,fullDuctLength, fullHeight]);

    union() {
            translate([outerArmLength+wallThickness, -1, -1]) {
            cube([innerDuctWidth,fullDuctLength+2,innerWallHeight+1]);
        }
        
        translate([-1, -1, -1]) {
            cube([outerArmLength+1,outerArmLength+1,fullHeight+2]);
        }
        
        translate([-1, fullDuctLength - outerArmLength, -1]) {
            cube([outerArmLength+1,outerArmLength+1,fullHeight+2]);
        }
        
        translate([fullDuctLength - outerArmLength, -1, -1]) {
            cube([outerArmLength+1,outerArmLength+1,fullHeight+2]);
        }
        
        translate([fullDuctLength - outerArmLength, fullDuctLength - outerArmLength, -1]) {
            cube([outerArmLength+1,outerArmLength+1,fullHeight+2]);
        }
        
        
        translate([-1, outerArmLength+wallThickness, -1]) {
            cube([fullDuctLength+2,innerDuctWidth,innerWallHeight+1]);
        }
        
    }
    

}