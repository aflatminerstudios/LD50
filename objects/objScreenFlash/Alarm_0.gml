/// @description Insert description here
// You can write your code in this editor

flashOn = false;
curFlash += 1;

if (curFlash < flashCount) {
  alarm[1] = offTime; 
} else {
  instance_destroy(); 
}
