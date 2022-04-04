/// @description Insert description here
// You can write your code in this editor

flashOff = !flashOff;

if (timeFlashing < 0) {
  timeFlashing = 0; 
}

//Flash a while
if (timeFlashing < timeToFlashEnd) {
  alarm[0] = timePerFlash; 
} else {
  instance_destroy(); 
}
