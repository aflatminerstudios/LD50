/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_create_layer(objMetaControl.boundLeft + 100, objMetaControl.boundUp + 100, "Instances", objBulletHPlayer);

instance_create_layer(objMetaControl.boundLeft + 80, objMetaControl.boundUp + 140, "Instances", objBulletHTower);
instance_create_layer(objMetaControl.boundLeft + 30, objMetaControl.boundUp + 170, "Instances", objBulletHTower);
//instance_create_layer(objMetaControl.boundRight - 30, objMetaControl.boundUp + 30, "Instances", objBulletHTower);
instance_create_layer(objMetaControl.boundRight - 30, objMetaControl.boundUp + 170, "Instances", objBulletHTower);
