/* "I" Panel connector generator by Llorenç Garcia 16/10/2024, https://github.com/Siot
 *
 * Licensing: 
 * This user content is licensed under a
Creative Commons Attribution-Noncommercial-Share Alike (https://creativecommons.org/licenses/by-nc-sa/4.0/)
*/

innerDuctWidth = 5;
wallThickness = 3;
innerWallHeight = 18;
length = 38;
useOuterArmLengthInsteadOfLength=false;
outerArmLength = 13.5;

/* [Hidden] */
fullLength = useOuterArmLengthInsteadOfLength ? outerArmLength+wallThickness+innerDuctWidth+wallThickness+outerArmLength : length;
fullHeight = innerWallHeight + wallThickness;

echo(fullLength);

difference() {
    
    cube([fullLength,wallThickness + innerDuctWidth + wallThickness, fullHeight]);

    union() {
        translate([-1, wallThickness, -1]) {
            cube([fullLength+2,innerDuctWidth,innerWallHeight+1]);
        }
        
    }
    

}