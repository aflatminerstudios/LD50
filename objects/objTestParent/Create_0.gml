/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var boundLeft = objMetaControl.boundLeft;
var boundRight = objMetaControl.boundRight;
var boundUp =objMetaControl.boundUp;
var boundDown = objMetaControl.boundDown;


instance_create_layer(boundLeft + 50, boundUp + 50, "Instances", objPlayer);
instance_create_layer(boundRight - 20, boundDown - 20, "Instances", objEnemy);
instance_create_layer(boundRight - 40, boundUp + 20, "Instances", objEnemy);
