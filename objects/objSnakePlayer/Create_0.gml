/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


turnDir = 0;
oldDir = 0;


maxParts = 1;

turnSpeed = room_speed / 5;

alarm[0] = turnSpeed;

partList = ds_list_create();
