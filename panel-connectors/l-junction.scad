/* "L" Panel connector generator by Llorenç Garcia 16/10/2024, https://github.com/Siot/designs
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
fullLength = outerArmLength + wallThickness + innerDuctWidth + wallThickness;
fullHeight = innerWallHeight + wallThickness;

difference() {
    
    cube([fullLength,fullLength, fullHeight]);

    union() {
            translate([outerArmLength + wallThickness, -1, -1]) {
            cube([innerDuctWidth, fullLength-wallThickness+1, innerWallHeight+1]);
        }
        
        translate([-1, -1, -1]) {
            cube([outerArmLength+1,outerArmLength+1,fullHeight+2]);
        }
        
        translate([-1, outerArmLength+wallThickness, -1]) {
            cube([fullLength-wallThickness+1,innerDuctWidth,innerWallHeight+1]);
        }
        
    }
}