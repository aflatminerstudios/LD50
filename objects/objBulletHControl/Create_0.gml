/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_create_layer(objMetaControl.boundLeft + 160, objMetaControl.boundUp + 70, "Instances", objBulletHPlayer);

instance_create_layer(objMetaControl.boundLeft + 80, objMetaControl.boundUp + 140, "Instances", objBulletHTower);
instance_create_layer(objMetaControl.boundLeft + 30, objMetaControl.boundUp + 170, "Instances", objBulletHTower);
//instance_create_layer(objMetaControl.boundRight - 30, objMetaControl.boundUp + 30, "Instances", objBulletHTower);
instance_create_layer(objMetaControl.boundLeft + 180, objMetaControl.boundUp + 185, "Instances", objBulletHTower);

bombSpawnMin = room_speed / 3;
bombSpawnMax = room_speed;

alarm[1] = irandom_range(bombSpawnMin, bombSpawnMax);

scrShowGameBackgroundLayer("BulletHBackground");
