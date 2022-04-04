/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timeToFlash = room_speed * 1.25;
timeToFlashEnd = room_speed * 0.8;
timePerFlash = room_speed / 8;

flashOff = false;
timeFlashing = -1;


alarm[0] = timeToFlash;
